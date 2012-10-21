#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <sys/file.h>
#include <unistd.h>
#include <sys/types.h>


static __inline__ uint64_t rdtsc(void)
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


static uint64_t freq[3][10];
static uint64_t delay[64];
__attribute__((constructor)) static void init(){int i,j;
  for(i=0;i<3;i++) for(j=0;j<9;j++) freq[i][j]=0;
  for(i=0;i<64;i++) delay[i]=0;
}
__attribute__((destructor)) static void save_cnt(){ int i,j;
  char *fname = "/var/log/strlen.prof";
  FILE *fi = fopen(fname,"r+");
  uint64_t freq2;
  if (fi){
    flock(fileno(fi),LOCK_EX);
      for(i=0;i<3;i++){
      for(j=0;j<9;j++){
        if(fscanf(fi,"%lli ", &freq2)>0){
          freq[i][j]+=freq2;
        }
      }
    }
    for(i=0;i<64;i++){
        if(fscanf(fi,"%lli ", &freq2)>0){
          delay[i]+=freq2;
        }
      }

    ftruncate(fileno(fi),0);
     fseek(fi, 0L, SEEK_SET);
    for(i=0;i<3;i++){
      for(j=0;j<9;j++){
        fprintf(fi,"%lli  ", freq[i][j]);
      }
      fprintf(fi,"\n");
    }
    for(i=0;i<64;i++){
      fprintf(fi,"%lli ",delay[i]);
    }

//    fsync(fileno(fi));
    flock(fileno(fi),LOCK_UN);
    fclose(fi);
  }
}
size_t strlen2(char *x){
  char *y=x;
  while(*x) x++;
  return x-y;
}

static uint64_t last;
size_t strlen(char *x){
  size_t r=strlen2(x);
  uint64_t ts=rdtsc();
  if (ts!=last)
    delay[63-__builtin_clzl(ts-last)]++;
  last=ts;
  int mag=0;
  size_t r2=r;
  if(r2>=1000) freq[2][8]++;
  else{
    while (r2>=10){
      mag++; r2/=10;
    }
    freq[mag][r2-1]++;
  }
  return r;
}
