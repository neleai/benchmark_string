#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <sys/file.h>

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


static uint64_t near=0,far=0;
static uint64_t freq[3][10];

__attribute__((destructor)) static void save_cnt(){ int i,j;
  char *fname = "/var/log/strlen.prof";
  FILE *fi = fopen(fname,"r");
  uint64_t near2,far2,freq2;
  if (fi){
    flock(fileno(fi),LOCK_EX);
    if(fscanf(fi,"%lli %lli", &near2,&far2)){
      near+=near2;far+=far2;
    }
    for(i=0;i<3;i++){
      for(j=0;j<9;j++){
        if(fscanf(fi,"%lli ", &freq2)){
          freq[i][j]+=freq2;
        }
      }
    }
    flock(fileno(fi),LOCK_UN);
    fclose(fi);
  }
  FILE *fo = fopen(fname,"w");
  if (fo){
    flock(fileno(fi),LOCK_EX);
    fprintf(fo,"%i %i\n",near,far);
    for(i=0;i<3;i++){
      for(j=0;j<9;j++){
        fprintf(fo,"%lli  ", freq[i][j]);
      }
      fprintf(fo,"\n");
    }
    flock(fileno(fi),LOCK_UN);
    fclose(fo);
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
  if (ts<last+1000) near++;
  else far++;
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
