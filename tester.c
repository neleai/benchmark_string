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
__inline__ uint64_t rdtsc(void) {
    uint32_t lo, hi;
    __asm__ __volatile__ (
    "        xorl %%eax,%%eax \n"
    "        cpuid"      // serialize
    ::: "%rax", "%rbx", "%rcx", "%rdx");
    /* We cannot use "=A", since this would use %rax on x86_64 and return only the lower 32bits of the TSC */
    __asm__ __volatile__ ("rdtsc" : "=a" (lo), "=d" (hi));
    return (uint64_t)hi << 32 | lo;
}
char *strstr2(char *s,char *n);
char *needle2,*haystack2;
char *needle,*haystack;
double fhlen;
void populate(char *needle,int needle_len,char *haystack,int haystack_len){int i,j;
    for(j=0;j<needle_len;j++){
      needle[j]=rand()%128+1;
      haystack[j]=rand()%128+1;

    }
    needle[needle_len]=0;
    for(j=needle_len;j<haystack_len;){
      haystack[j]=rand()%128+1;j++;
    }
    haystack[haystack_len]=0;
    if(haystack_len>needle_len){
      for(j=0;j<needle_len;j++)
        haystack[haystack_len-needle_len+j]=needle[j];
    }
}
void populate_aaab(char *needle,int needle_len,char *haystack,int haystack_len){int i,j;
    for(j=0;j<needle_len;j++){
      needle[j]='a';
      haystack[j]='a';

    }
    needle[needle_len-1]='b';
    needle[needle_len]=0;
    for(j=needle_len;j<haystack_len;){
      haystack[j]='a';j++;
    }
    haystack[haystack_len]=0;
    if(haystack_len>needle_len){
      for(j=0;j<needle_len;j++)
        haystack[haystack_len-needle_len+j]=needle[j];
    }
}
int plant[1<<20],plant_no;
void populate_planted(char *needle,int needle_len,char *haystack,int haystack_len){int i,j;
  for(j=0;j<needle_len;j++){
      needle[j]=rand()%128+1;
    }
  needle[needle_len]=0;
  j=0;
  char next=0;
  while(j<haystack_len){
    int r=rand()&((1<<20)-1);
    if (!plant[r]) {
      haystack[j]=rand()%128+1;
      if (haystack[j]!=needle[0] && haystack[j]!=next){
        next=0;
        j++;
      }
    } else {
      if (next!=needle[0] ){
        for(i=0;i<plant[r];i++) haystack[j+i]=needle[i];
        next=needle[plant[r]];
        j+=plant[r];
      }
    }
  }

  haystack[haystack_len]=0;
   if(haystack_len>needle_len){
     for(j=0;j<needle_len;j++)
       haystack[haystack_len-needle_len+j]=needle[j];
  }
}
FILE *plot,*plot_r;
void test(int runs,int needle_len,int haystack_len, void (*pop)()){
  if (runs<100) runs=100;
  double *times=malloc(runs*sizeof(double));
  int sos=0; int i;int j,k; 
  uint64_t time_start,time_end,time_mid;
  for(i=0;i<runs;i++){
    if(getenv("ALIGNED") && !strcmp(getenv("ALIGNED")),"aligned"){
      needle=needle2-(((long)needle2)&31);
      haystack=haystack2-(((long)needle2)&31);
    } else if (!strcmp(getenv("ALIGNED")),"unaligned"){
      needle=needle2-(((long)needle2)&31)+3;
      haystack=haystack2-(((long)needle2)&31)+11;
    } else {
      needle=needle2+(rand()%512);
      haystack=haystack2+(rand()%512);
    }
    pop(needle,needle_len,haystack,haystack_len);
    time_start=rdtsc();
    char *r=strstr2(haystack,needle);
    if(r) sos+=r-haystack;  
    time_end=rdtsc();
    times[i]=time_end-time_start-ts_avg;
  }
  double mean=0;
  for(i=0;i<runs;i++) mean+=times[i];
  mean=mean/runs;
  double variance=0;
  for(i=0;i<runs;i++) variance+= (mean-times[i])*(mean-times[i]);
  printf("%f+-%f\n",mean/haystack_len,sqrt(variance/(runs-1))/haystack_len);
  fprintf(plot,"%f %f\n" ,fhlen,mean);
  fprintf(plot_r,"%f %f\n",fhlen,mean/haystack_len);

  fprintf(stderr,"%i %i %i\n",needle_len,haystack_len,sos);
  free(times);
}
int plant_r[100],plant_n[100];
int main(int argc,char **argv){int i,j; long sum;
  for (i=0;i<100000000) sum=sum*sum+3*sum; //cpu scaling affect rdtsc
  FILE *ts=fopen("ts_avg","r");
  fscanf(ts,"%lli",&ts_avg);
  plot=fopen("plot.dat","w");
  plot_r=fopen("plot_r.dat","w");
	cpu_bind(sched_getcpu());
  srand(42);
int  type = atoi(argv[1]);
int  slen = atoi(argv[2]);
int  nlen = atoi(argv[3]);
  needle2  =malloc(nlen+1000);
  haystack2=malloc(20*slen+1000);
  void(*fn)();
  if      (type==0) fn=populate;
  else if (type==1) fn=populate_aaab;
  else if (type==2) {fn=populate_planted;
    FILE *f=fopen("plant","r");
    plant_no=1<<20;
    sum=0;
    int no;
    for (no=0;fscanf(f,"%i %i",plant_r+no,plant_n+no)!=EOF;no++){sum+=1000*plant_r[no]/(plant_n[no] ? plant_n[no] : 1);}
    int avail=0;
    for (i=0;i<no;i++){
      int ratio=plant_no/sum*(1000*plant_r[i]/(plant_n[i] ? plant_n[i] : 1));
      if (avail+ratio>=plant_no) break;
      for (j=0;j<ratio;j++) plant[avail+j]=plant_n[i];
      avail+=ratio;
    }
    for(j=avail;j<plant_no;j++) plant[j]=0;
  }
  for(i=2;i<20;i++){ 
    fhlen=(slen*i)/2.0;
    test(100000/(slen==1 ? 10 : slen),nlen,(slen*i)/2,fn);
  }
}
