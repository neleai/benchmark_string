#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
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

int main()
{
  int i;
  int sum=1;
  for (i=0; i<100000000; i++) sum=sum*sum+3*sum; //cpu scaling affect rdtsc
  long ts_start=rdtsc();
  for (i=0; i<200; i++) sum+=rdtsc();
  long ts_end=rdtsc();
  printf("%lli",sum);
  ts_avg=(ts_end-ts_start)/201.0;
  FILE *f=fopen("ts_avg.dat","w");
  fprintf(f,"%lli",ts_avg);
}
