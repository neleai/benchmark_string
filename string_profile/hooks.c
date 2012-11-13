#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <sys/file.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/mman.h>

#include "layout.h"

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

char *binary_name(){int i;
  char *x=malloc(48);
  sprintf(x,"/proc/%i/cmdline",getpid());
  FILE *f=fopen(x,"r");
  for(i=0;i<48;i++)x[i]=0;
  fgets(x,48,f);
  x[47]=0;
  return x;
}

disk_layout prof;
__attribute__((destructor)) static void save_cnt(){ int i,j;
  char *fname = "/tmp/libc_profile";
  FILE *fi = fopen(fname,"r+");
	void *sm= mmap(NULL,sizeof(disk_layout)+TOP_FUNCTIONS*sizeof(disk_layout2),PROT_READ|PROT_WRITE,MAP_SHARED,fileno(fi),0);
  if (sm){
		disk_layout  *lay=sm;
    disk_layout2 *lay2=sm+sizeof(disk_layout);
		int i;
		uint64_t *  ptr= (uint64_t*)lay;
		uint64_t * mptr= (uint64_t*)&prof;

		for(i=0;i<sizeof(disk_layout)/sizeof(uint64_t);i++)	
			ptr[i]+=mptr[i];
  char *bname;
  size_t calls;
  #define FN(fn) \
    bname=binary_name();\
    calls=prof.fn.success+prof.fn.fail;\
    for(i=0;i<TOP_FUNCTIONS;i++){\
      if(!strncmp(bname,lay2[i].fn.name,48)){\
        calls+=lay2[i].fn.calls;\
        for(i++;i<TOP_FUNCTIONS;i++)\
          memcpy(&(lay2[i-1].fn), &(lay2[i].fn),64);\
        lay2[TOP_FUNCTIONS-1].fn.calls=0;\
      }\
    }\
    for (i=0;i<TOP_FUNCTIONS;i++){\
      if(calls>lay2[i].fn.calls){\
        for(j=TOP_FUNCTIONS-1;j>=i;j--)\
          memcpy(&(lay2[j+1].fn), &(lay2[j].fn),64);\
          lay2[i].fn.calls=calls;\
          memcpy(lay2[i].fn.name,bname,48);\
        i=TOP_FUNCTIONS;\
      }\
    }
#include "functions.h"
		munmap(sm,sizeof(disk_layout));
  }
}

size_t strnlen3(char *x,size_t no){
	char foo[16];
  char *y=x;
  while (y-x!=no && *y) y++;
  return y-x;
}

#define START_MEASURE(fn) prof.fn.start=rdtsc();
#define COMMON_MEASURE(fn)\
	uint64_t ts=rdtsc();\
	if (ts-prof.fn.last<2000000000 && ts-prof.fn.start<2000000){\
	prof.fn.delay[ 63-__builtin_clzl(prof.fn.start-prof.fn.last) ]++;\
  size_t r2= (b_##fn & B_BYTEWISE_SIZE) ? r\
    :((size_t)x+r)/16-((size_t)x)/16+1;\
  if(r2>=1000) r2=999;\
  prof.fn.cnt[2][r2/30]++;\
	prof.fn.time[2][r2/30]+=ts-prof.fn.start;\
	if(r2>=100) r2=99;\
  prof.fn.cnt[1][r2/3]++;\
	prof.fn.time[1][r2/3]+=ts-prof.fn.start;\
	if(r2>=10) r2=9;\
  prof.fn.cnt[0][r2]++;\
	prof.fn.time[0][r2]+=ts-prof.fn.start;\
  prof.fn.aligns[(b_## fn & B_REL_ALIGN) ? (x-y)%64 : ((uint64_t) x)%64]++;\
	prof.fn.success++;\
	}\
	prof.fn.last=ts;\
  if (b_##fn & B_NEEDLE){\
  size_t r2=strlen(y);\
  if(r2>=1000) r2=999;\
  prof.fn.needle[2][r2/30]++;\
  if(r2>=100) r2=99;\
  prof.fn.needle[1][r2/3]++;\
  if(r2>=10) r2=9;\
  prof.fn.needle[0][r2]++;\
  }

char *y;
size_t strnlen(char *x,size_t no){
	START_MEASURE(strlen);
	size_t r=strnlen3(x,no);
  COMMON_MEASURE(strlen);
	if (r==no) {prof.strlen.success--; prof.strlen.fail++;}
  return r;
}
size_t strlen(char *x){ 
	START_MEASURE(strlen);
	size_t r=strlen3(x);
  COMMON_MEASURE(strlen);
  return r;
}

char * strrchr(char *x,int c){
	START_MEASURE(strrchr);
  char *y=x;
	char *ret=NULL;
  while (*y){
		if (*y==((char)c)) ret=y;
		 y++;
	}
	size_t r=y-x;
	COMMON_MEASURE(strrchr);
	y=ret;
	if (y){
		return y;
	} else {
		prof.strchr.success--;
		prof.strchr.fail++;
		return y;
	}
}

char * memrchr(char *x,int c,int n){
	START_MEASURE(strrchr);
  char *y=x;
	char *ret=NULL;
  while (y-x!=n){
		if (*y==((char)c)) ret=y;
		 y++;
	}
	size_t r=y-x;
	COMMON_MEASURE(strrchr);
	y=ret;
	if (y){
		return y;
	} else {
		prof.strchr.success--;
		prof.strchr.fail++;
		return y;
	}
}




char * strchr2(char *x,int c,int nul){
	START_MEASURE(strchr);
  char *y=x;
  while (*y && *y!=((char)c)) y++;
	size_t r=y-x;
	COMMON_MEASURE(strchr);
	if (*y==((char)c)){
		return y;
	} else {
		prof.strchr.success--;
		prof.strchr.fail++;
		return nul ? y : NULL;
	}
}

char *strchr(   char *x,int c){return strchr2(x,c,0);}
char *strchrnul(char *x,int c){return strchr2(x,c,1);}

char * memchr(char *x,int c,size_t n){
	START_MEASURE(memchr);
  char *y=x;
  while (y-x!=n && *y!=((char)c)) y++;
	size_t r=y-x;
	COMMON_MEASURE(memchr);
	if (y-x!=n){
		return y;
	} else {

		prof.memchr.success--;
		prof.memchr.fail++;
		return NULL;
	}
}
char * rawmemchr(char *x,int c){return memchr(x,c,SIZE_MAX);}

char*
strcpy2(char *x, const char *y,int end){
	START_MEASURE(strcpy);
	size_t i;

	for (i = 0 ; y[i] != '\0' ; i++)
		x[i] = y[i];
		x[i] = '\0';
	int r=i;
	COMMON_MEASURE(strcpy);
	return end ? x+r : x;
}
char *strcpy(char *x,char *y){return strcpy2(x,y,0);}
char *stpcpy(char *x,char *y){return strcpy2(x,y,1);}


char*
memcpy(char *x, const char *y,size_t n){
	START_MEASURE(memcpy);
	size_t i;

	for (i = 0 ; i<n ; i++)
		x[i] = y[i];
	int r=i;
	COMMON_MEASURE(memcpy);
	return x;
}
char *memccpy(char *x,char *y,int c,size_t n){
	char *cp=memchr(x,c,n);
	if (cp) n= cp-x;
	return memcpy(x,y,n);
}

	char*
strncat(char *x, const char *y, size_t n)
{
	START_MEASURE(strcat);
	size_t dest_len = strlen(x);
	size_t i;

	for (i = 0 ; i < n && y[i] != '\0' ; i++)
		x[dest_len + i] = y[i];
	x[dest_len + i] = '\0';
	size_t r= dest_len +i;
	COMMON_MEASURE(strcat);
	return x;
}
char * strcat(char *x,char *y){return strncat(x,y,SIZE_MAX);}

int strcasecmp(char *x,char *y){
	START_MEASURE(strcasecmp);
	size_t r=0;
	if (x!=y){
		while( x[r] && tolower(x[r])==tolower(y[r])) r++;
	}
	COMMON_MEASURE(strcasecmp);
	if (x[r]<y[r]) return -1;
	if (x[r]>y[r]) return 1;
	return 0;
}

int memcmp(char *x,char *y,size_t n){
	START_MEASURE(strcmp);
	size_t r=0;
	if (x!=y){
		while(r!=n && x[r]==y[r]) r++;
	}
	COMMON_MEASURE(strcmp);
	if ( r == n) return 0;
	if (x[r]<y[r]) return -1;
	if (x[r]>y[r]) return 1;
	return 0;
}
void *
bsearch (const void *key, const void *base, size_t nmemb, size_t size,
   int (*compar) (const void *, const void *))
{
  char * x = base;
  size_t r = size*nmemb;
  START_MEASURE(bsearch);
  size_t l, u, idx;
  const void *p;
  int comparison;

  l = 0;
  u = nmemb;
  while (l < u)
    {
      idx = (l + u) / 2;
      p = (void *) (((const char *) base) + (idx * size));
      comparison = (*compar) (key, p);
      if (comparison < 0)
  u = idx;
      else if (comparison > 0)
  l = idx + 1;
      else{
  COMMON_MEASURE(bsearch);
  return (void *) p;
  }
    }
  prof.bsearch.success--;
  prof.bsearch.fail++;
  COMMON_MEASURE(bsearch);
  return NULL;
}

inline void * 
lsearch (const void *key, const void *s, size_t size, size_t psize,
   int (*cmp) (const void *, const void *)){
  char * x = s;
  size_t r = size*psize;
  START_MEASURE(lsearch);
  void *end; 
  for(end = s+size*psize; s!=end; s+=psize){
    if (!cmp(key,s)){ 
     COMMON_MEASURE(lsearch);
     return s;
    }
  }
  COMMON_MEASURE(lsearch);
  prof.lsearch.success--;
  prof.lsearch.fail++;
  return NULL;
}




int strncmp(char *x,char *y,size_t n){
	START_MEASURE(strcmp);
	size_t r=0;
	if (x!=y){
		while(r!=n && x[r] && x[r]==y[r]) r++;
	}
	COMMON_MEASURE(strcmp);
	if ( r == n) return 0;
	if (x[r]<y[r]) return -1;
	if (x[r]>y[r]) return 1;
	return 0;
}
int strcmp(char *x,char *y){return strncmp(x,y,SIZE_MAX);}
char * strndup(char *x,size_t n){
	START_MEASURE(strdup);
	size_t r=strnlen(x,n);
	char *y=malloc(r+1);
	memcpy(y,x,r);
	y[r]=0;
	COMMON_MEASURE(strdup);
	return y;
}
char *strdup(char *x){return strndup(x,SIZE_MAX);}

size_t strspn2(char *x,char *y,int accept){
	START_MEASURE(strspn);
	size_t r=0;
	while(1){
		int found=0;
		char *y2=y;
		while(*y2){
			if (*y2==x[r]) found=1;
			y2++;
	}
		if (!x[r] || found==accept){
			COMMON_MEASURE(strspn);
			return r;
		}
		r++;
	}
}
size_t strspn(char *x,char *y){ return strspn2(x,y,0);}
size_t strcspn(char *x,char *y){ return strspn2(x,y,1);}
char *strpbrk(char *x,char *y){ char *z=x+strcspn(x,y); return *z ? z : NULL;}
char *strstr2(char *s,char *y,int cas){
  size_t i,r; 
	START_MEASURE(strstr);
	char *x=s;
	while(*s){
		for(i=0;y[i]&& (cas ? (tolower(s[i])==tolower(y[i])) : (s[i]==y[i])); i++);
		if(!y[i]){
			r=s-x;
			COMMON_MEASURE(strstr);
			return s;
		}
		s++;
			}
	r=s-x;
	COMMON_MEASURE(strstr);
	prof.strstr.success--;
	prof.strstr.fail++;
	return NULL;	
}

char *memset(char *x,int c,size_t no){
  size_t r=no;size_t i;
  START_MEASURE(memset);
  for(i=0;i<no;i++) x[i]=c;
  COMMON_MEASURE(memset);
  return x;
}
char *bzero(char *x,size_t no){return memset(x,0,no);}

char *strstr(char *x,char *y){return strstr2(x,y,0);}
char *strcasestr(char *x,char *y){return strstr2(x,y,1);}
