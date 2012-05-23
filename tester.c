
#define _GNU_SOURCE
#include <stdint.h>
#include <math.h>
#include <stdio.h>
#include <dlfcn.h>
#include <stdlib.h>
#include <sched.h>
int cpu_bind(const unsigned short cpu)
{
  cpu_set_t mask;
  int ret;

  CPU_ZERO(&mask);
  CPU_SET((int)cpu, &mask);
  ret = sched_setaffinity(0, sizeof mask, &mask);

  return ret;
}

long ts_avg;
__inline__ uint64_t rdtsc(void)
{
  uint32_t lo, hi;
  __asm__ __volatile__ (
    "        xorl %%eax,%%eax \n"
    "        cpuid"      // serialize
    ::: "%rax", "%rbx", "%rcx", "%rdx");
  /* We cannot use "=A", since this would use %rax on x86_64 and return only the lower 32bits of the TSC */
  __asm__ __volatile__ ("rdtsc" : "=a" (lo), "=d" (hi));
  return (uint64_t)hi << 32 | lo;
}
char *needle2,*haystack2;
char *needle,*haystack;
double fhlen;
int r_seed;
void random2(char *s,int len)
{
  int j;
  for(j=0; j<len; j++)
    s[j]=rand_r(&r_seed)%128+1;
}
void aaab(char *s,int len)
{
  int j;
  for(j=0; j<len-1; j++)
    s[j]='a';
  s[len-1]='b';
}

/*plant needs read needle by global variable.*/
int plant[1<<20],plant_no;
void planted(char *haystack,int haystack_len)
{
  int i,j;
  j=0;
  char next=0;
  while(j<haystack_len)
    {
      int r=rand_r(&r_seed)&((1<<20)-1);
      if (!plant[r])
        {
          haystack[j]=rand_r(&r_seed)%128+1;
          if (haystack[j]!=needle[0] && haystack[j]!=next)
            {
              next=0;
              j++;
            }
        }
      else
        {
          if (next!=needle[0] )
            {
              for(i=0; i<plant[r]; i++) haystack[j+i]=needle[i];
              next=needle[plant[r]];
              j+=plant[r];
            }
        }
    }
}

FILE *plot,*plot_r;
void test(int runs,int needle_len,void (*needle_fn)(),int haystack_len, void (*haystack_fn)())
{
  if (runs<100) runs=100;
  double *times=malloc(runs*sizeof(double));
  int i;
  int j,k;
  uint64_t time_start,time_end,time_mid;
  for(i=0; i<runs; i++)
    {
      if(getenv("ALIGNED") && !strcmp(getenv("ALIGNED")),"aligned")
        {
          needle=needle2-(((long)needle2)&31);
          haystack=haystack2-(((long)needle2)&31);
        }
      else if (!strcmp(getenv("ALIGNED")),"unaligned")
        {
          needle=needle2-(((long)needle2)&31)+3;
          haystack=haystack2-(((long)needle2)&31)+11;
        }
      else
        {
          needle=needle2+(rand_r(&r_seed)%512);
          haystack=haystack2+(rand_r(&r_seed)%512);
        }
      int cur_seed=r_seed;
      needle_fn(  needle  ,needle_len);
      needle[needle_len]=0;
      haystack_fn(haystack,haystack_len);
      haystack[haystack_len]=0;
      if(haystack_len>=needle_len)
        {
          for(j=0; j<needle_len; j++)
            haystack[haystack_len-needle_len+j]=needle[j];
        }


      time_start=rdtsc();
      char *r=TEST_FN;
      time_end=rdtsc();
      if ((needle_len> haystack_len&&r) ||
          (needle_len<=haystack_len&&r!=haystack+haystack_len-needle_len)){
        fprintf(stderr,"Wrong answer.  Used seed %i,needle %i,haystack %i",cur_seed,needle_len,haystack_len);
        exit(-3);
      } 
      times[i]=time_end-time_start-ts_avg;
      /*ignore resheduled*/
      if (times[i]<-1000)               times[i]=times[i-1];
      if (times[i]>1000.0*haystack_len) times[i]=times[i-1];


    }
  double mean=0;
  for(i=0; i<runs; i++) mean+=times[i];
  mean=mean/runs;
  double variance=0;
  for(i=0; i<runs; i++) variance+= (mean-times[i])*(mean-times[i]);
  printf("%f+-%f\n",mean/haystack_len,sqrt(variance/(runs-1))/haystack_len);
  fprintf(plot,"%f %f\n" ,fhlen,mean);
  fprintf(plot_r,"%f %f\n",fhlen,mean/haystack_len);

  fprintf(stderr,"%i %i\n",needle_len,haystack_len);
  free(times);
}
int plant_r[100],plant_n[100];
void *get_gen(char *s)
{
  if (!strcmp(s,"random")) return random2;
  if (!strcmp(s,"aaab"  )) return aaab;
  if (!strcmp(s,"planted" )){long sum; int i,j;
    if (RAND_MAX<(16<<20)) { 
      printf("RAND_MAX too small"); exit(-2);
    }
    FILE *f=fopen("plant","r");
      plant_no=1<<20;
      sum=0;
      int no;
      for (no=0; fscanf(f,"%i %i",plant_r+no,plant_n+no)!=EOF; no++)
        {
          sum+=1000*plant_r[no]/(plant_n[no] ? plant_n[no] : 1);
        }
      int avail=0;
      for (i=0; i<no; i++)
        {
          int ratio=plant_no/sum*(1000*plant_r[i]/(plant_n[i] ? plant_n[i] : 1));
          if (avail+ratio>=plant_no) break;
          for (j=0; j<ratio; j++) plant[avail+j]=plant_n[i];
          avail+=ratio;
        }
      for(j=avail; j<plant_no; j++) plant[j]=0;

   return planted;
  }
}
int main(int argc,char **argv)
{
  int i,j;
  long sum;
  for (i=0; i<10000000; i++) sum=sum*sum+3*sum; //cpu scaling affect rdtsc
  FILE *ts=fopen("ts_avg","r");
  fscanf(ts,"%lli",&ts_avg);
  plot=fopen("plot.dat","w");
  plot_r=fopen("plot_r.dat","w");
  cpu_bind(sched_getcpu());
  r_seed=42;
  void (*haystack_gen)()=get_gen(argv[1]);
  int  slen = atoi(argv[2]);
  void (*needle_gen)()  =get_gen(argv[3]);
  int  nlen = atoi(argv[4]);
  needle2  =malloc(nlen+1000);
  haystack2=malloc(20*slen+1000);
    {
        }
  for(i=2; i<=20; i++)
    {
      fhlen=(slen*i)/2.0;
      test(100000/(slen==1 ? 10 : slen),nlen,needle_gen,(slen*i)/2,haystack_gen);
    }
}
