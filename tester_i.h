
#define _GNU_SOURCE
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

static void err(char *s){
  fprintf(stderr,s);fprintf(stderr,"\n");exit(42);
}
extern long ts_avg;
static __inline__ uint64_t rdtsc(void)
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

extern uint64_t ts_start;
typedef struct {
  long time;
  long size;
} data_s;
extern data_s *data;
extern int data_no;
inline void bench_start(){
  if (ts_start) err("recursive invocation of benchmarked function detected");
  ts_start=rdtsc();
  if (!ts_start) ts_start=1;
}
inline void bench_end(int size){
  if (!ts_start) err("bench_end without bench_start");
  uint64_t ts_end=rdtsc();
  data[data_no].time=ts_end-ts_start-ts_avg;
  data[data_no].size=size;
  data_no++;
  if (data_no>=100000000) err("TODO compact data");
  ts_start=0;
}

