
#define _GNU_SOURCE
#include <stdint.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <sched.h>
#include <string.h>
int cpu_bind(const unsigned short cpu)
{
  cpu_set_t mask;
  int ret;

  CPU_ZERO(&mask);
  CPU_SET((int)cpu, &mask);
  ret = sched_setaffinity(0, sizeof mask, &mask);

  return ret;
}
void err(char *s){
  fprintf(stderr,s);fprintf(stderr,"\n");exit(42);
}
long ts_avg;
#ifndef USE_CLOCK
__inline__ uint64_t rdtsc(void)
{
  uint32_t lo, hi;
/*  __asm__ __volatile__ (
    "        xorl %%eax,%%eax \n"
    "        cpuid"      // serialize
    ::: "%rax", "%rbx", "%rcx", "%rdx");*/
  /* We cannot use "=A", since this would use %rax on x86_64 and return only the lower 32bits of the TSC */
  __asm__ __volatile__ ("rdtsc" : "=a" (lo), "=d" (hi));
  return (uint64_t)hi << 32 | lo;
}
#else
#include <time.h>
struct timespec res;
int clock_rand;
__inline__ uint64_t rdtsc(void)
{
  struct timespec ret;
  clock_gettime(CLOCK_MONOTONIC,&ret);

  int i,d=rand_r(clock_rand)%res.tv_nsec;//introduce noise to improve precision.
  for(i=0;i<d;i++) clock_rand=3*clock_rand+5;

  return ((long)1000000000)*ret.tv_sec+ret.tv_nsec;
}
#endif
int clock_rand=0;


long ts_avg;
uint64_t ts_start;
typedef struct {
  long time;
  long size;
} data_s;
data_s *data;int data_no;
inline void bench_start(){
  if (ts_start) err("recursive invocation of benchmarked function detected");

  int i,d=rand_r(&clock_rand)%256;//introduce noise to improve precision.
  for(i=0;i<d;i++) clock_rand=3*clock_rand+5;


  ts_start=rdtsc();
  if (!ts_start) ts_start=1;
}
inline void _bench_end(){
  if (!ts_start) err("bench_end without bench_start");
  uint64_t ts_end=rdtsc();
  data[data_no].time=ts_end-ts_start-ts_avg;
  data_no++;
  if (data_no>=100000000) err("TODO compact data");
  ts_start=0;
}
#define bench_end(x) _bench_end(); data[data_no-1].size=(x)
void *lib;
void init_tester(){
//  cpu_bind(sched_getcpu());
#ifdef USE_CLOCK
   clock_getres(CLOCK_MONOTONIC, &res);
#endif
  FILE *ts=fopen("data/ts_avg.dat","r");  fscanf(ts,"%lli",&ts_avg);  
  data=malloc(100000000*sizeof(data_s));

  data_no=0;
}
int less_size(data_s *a,data_s *b){
  if (a->size>b->size) return  1;
  if (a->size<b->size) return -1;
  return 0;
}
int less_time(data_s *a,data_s *b){
  if (a->time>b->time) return  1;
  if (a->time<b->time) return -1;
  return 0;
}

void fini_tester(){
  FILE *plot,*plot_r,*plot_rng,*plot_sd;

  qsort(data,data_no,sizeof(data_s),(__compar_fn_t)less_size);
  plot    =fopen("data/plot.dat","w");
  plot_r  =fopen("data/plot_r.dat","w");
  plot_rng=fopen("data/plot_rng.dat","w");
  plot_sd =fopen("data/plot_sd.dat","w");
  int i=0,i2,k; double flen,mean,variance;int m,j;
  for(m=1;m<1000000000;m*=10){
    for(j=2;j<20;j++){
      flen=m*j/2.0;
      for(i2=i;i2<data_no && data[i2].size < m*(j+1)/2;i2++);
      if (i2-i>20) {
        qsort(data+i,i2-i,sizeof(data_s),(__compar_fn_t)less_time);
        mean=0; variance=0;
        for(k=i+5;k<i2-5;k++) mean+=data[k].time;
        mean=mean/(i2-i-10);
        for(k=i+5;k<i2-5;k++) variance+= (data[k].time-mean)*(data[k].time-mean);
        fprintf(plot,"%f %f\n" ,flen,mean);
        fprintf(plot_sd,"%f %f\n",flen,sqrt(variance/(i2-i-10-1))/flen);
        fprintf(plot_r,"%f %f\n",flen,16*mean/flen);
        fprintf(plot_rng,"%f %lli %lli\n",flen,data[i+5+5*(i2-i-10)/100].time,data[i+5+95*(i2-i-10)/100].time);      
      }
      i=i2;
    }
  }

  fclose(plot);
  fclose(plot_r);
  fclose(plot_rng);
  fclose(plot_sd);
}


