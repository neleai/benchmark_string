#include <dlfcn.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <sys/file.h>
#include <unistd.h>
#include <ctype.h>
#include <sys/types.h>
#include <sys/mman.h>
#include <string.h>
#include "layout.h"
#include "variants.h"
static void* libc_handle,*libm_handle;
unsigned int r_seed;
char *x=NULL;
char *y;
size_t r=0,ns=0;
#include <malloc.h>

#include "utils.h"
disk_layout prof;

__attribute__((constructor)) static void init_seed(){
	struct timeval time;
  gettimeofday(&time,NULL);
  r_seed= (time.tv_sec * 1000) + (time.tv_usec / 1000);
}
__attribute__((destructor)) static void save_cnt(){ int i,j;
  FILE *fi = fopen(FNAME,"r+");
  if (fi){
    void *sm= mmap(NULL,sizeof(disk_layout)+sizeof(disk_layout2),PROT_READ|PROT_WRITE,MAP_SHARED,fileno(fi),0);
    if (sm){
      disk_layout  *lay=sm;
      disk_layout2 *lay2=sm+sizeof(disk_layout);
      int i;
      uint64_t *  ptr= (uint64_t*)lay;
      uint64_t * mptr= (uint64_t*)&prof;

      for(i=0;i<sizeof(disk_layout)/sizeof(uint64_t);i++)	
        ptr[i]+=mptr[i];
      char *bname;int present,min_ub;
      size_t calls;
#undef FN 
#define FN(fn) \
      bname=binary_name();\
      calls=prof.fn.success+prof.fn.fail;\
      present=0;\
      for(i=0;i<TOP_FUNCTIONS;i++){\
        if(!strncmp(bname,lay2->fn[i].name,48)){\
          lay2->fn[i].calls+=calls;\
          present=1;\
        }\
      }\
      min_ub=0;\
      for (i=0;i<TOP_FUNCTIONS;i++){\
        if(lay2->fn[min_ub].calls>lay2->fn[i].calls){\
          min_ub=i;\
        }\
      }\
      if(!present && calls> lay2->fn[min_ub].calls){\
        memcpy(lay2->fn[min_ub].name,bname,48);\
        lay2->fn[min_ub].calls=calls;\
      }
#include "functions.h"
      munmap(sm,sizeof(disk_layout));
    }
  }
}
#define FAILED(fn)    prof.fn.success--;\
    prof.fn.fail++;



#define START_MEASURE(fn) prof.fn.start=rdtsc();
#define COMMON_MEASURE(fn) \
  if(prof.fn.start!=prof.fn.last && (prof.fn.start-prof.fn.last)<(1<<31))\
  	prof.fn.delay[ 63-__builtin_clzl(prof.fn.start-prof.fn.last) ]++;\
  prof.fn.last=rdtsc();\
  prof.fn.aligns[(b_## fn & B_REL_ALIGN) ? (x-y)%64 : ((uint64_t) x)%64]++;\
	prof.fn.success++;\
  if (r<=16) prof.fn.less16++;\
  size_t r2= ((size_t)x+r)/16-((size_t)x)/16+1;\
	if (prof.fn.last-prof.fn.start<1024+128*r){\
    if(r2<=1000) {\
      prof.fn.block_cnt[choice][1][r2/10]++;\
    	prof.fn.block_time[choice][1][r2/10]+=prof.fn.last-prof.fn.start;\
    }\
	  if(r2<=100) {\
      prof.fn.block_cnt[choice][0][r2]++;\
  	  prof.fn.block_time[choice][0][r2]+=prof.fn.last-prof.fn.start;\
    }\
    if(r<=1000) {\
      prof.fn.byte_cnt[choice][1][r/10]++;\
    	prof.fn.byte_time[choice][1][r/10]+=prof.fn.last-prof.fn.start;\
    }\
	  if(r<=100) {\
      prof.fn.byte_cnt[choice][0][r]++;\
  	  prof.fn.byte_time[choice][0][r]+=prof.fn.last-prof.fn.start;\
    }\
  }\
  if (b_##fn & B_NEEDLE){\
  if(ns<=1000)\
    prof.fn.needle[1][ns/10]++;\
  if(ns<=100)\
    prof.fn.needle[0][ns]++;\
  }\
  {\
  int i;\
  int found=0;\
  void *bt=backtrace2();\
  for (i=0;i<prof.fn.call_sites;i++){\
    if(bt==call_sites.fn[i]) found=1;\
  }\
  if(!found && prof.fn.call_sites<100){\
    call_sites.fn[prof.fn.call_sites]=bt;\
    prof.fn.call_sites++;\
  }\
  }
