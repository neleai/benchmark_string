#include <dlfcn.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <sys/file.h>
#include <unistd.h>
#include <ctype.h>
#include <sys/types.h>
#include <sys/mman.h>
char *memcpy(char *dest, const char *src, size_t n);
#include "layout.h"

#include <pthread.h>
pthread_t main_tid;
static void* libc_handle,*libm_handle;

#define choice 0

char *x=NULL;
size_t r=0,ns=0;
#include <malloc.h>
void *(*__malloc_hook2)(size_t);
void (*__free_hook2)(void*);
void *(__malloc2)(size_t);
void (__free2)(void*);
void *(*__realloc_hook2)(void*, size_t);
void *(__realloc2)(void* ,size_t);

#include "utils.h"

typedef struct { 
  void *addr; 
  uint64_t start;
  uint64_t size;
  pthread_t thread;
} malltime;
malltime *mall_hash;
__attribute__((constructor)) static void load_dl(){
  libc_handle=dlopen("libc.so.6",RTLD_NOW);
  libm_handle=dlopen("libm.so",RTLD_NOW);
  main_tid=pthread_self();
  mall_hash=calloc((1<<20)+64,sizeof(malltime));
  __malloc_hook2=__malloc_hook;
  __malloc_hook=__malloc2;
  __realloc_hook2=__realloc_hook;
  __realloc_hook=__realloc2;

  __free_hook2=__free_hook;
  __free_hook=__free2;
}


disk_layout prof;
__attribute__((destructor)) static void save_cnt(){ int i,j;
  FILE *fi = fopen(FNAME,"r+");
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

#define FAILED(fn)    prof.fn.success--;\
    prof.fn.fail++;


#define START_MEASURE(fn) prof.fn.start=rdtsc();
#define COMMON_MEASURE(fn)\
  if(prof.fn.start!=prof.fn.last && (prof.fn.start-prof.fn.last)<(1<<31))\
  	prof.fn.delay[ 63-__builtin_clzl(prof.fn.start-prof.fn.last) ]++;\
  prof.fn.last=rdtsc();\
  prof.fn.aligns[(b_## fn & B_REL_ALIGN) ? (x-y)%64 : ((uint64_t) x)%64]++;\
	prof.fn.success++;\
  if (r<=16) prof.fn.less16++;\
  size_t r2= (b_##fn & B_BYTEWISE_SIZE) ? r\
    :((size_t)x+r)/16-((size_t)x)/16+1;\
	if (prof.fn.last-prof.fn.start<2000000){\
    if(r2>=1000) r2=999;\
    prof.fn.cnt[choice][1][r2/10]++;\
  	prof.fn.time[choice][1][r2/10]+=prof.fn.last-prof.fn.start;\
	  if(r2>=100) r2=99;\
    prof.fn.cnt[choice][0][r2]++;\
	  prof.fn.time[choice][0][r2]+=prof.fn.last-prof.fn.start;\
  }\
  if (b_##fn & B_NEEDLE){\
  if(ns>=1000) ns=999;\
  prof.fn.needle[1][ns/10]++;\
  if(ns>=100) ns=99;\
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

char *y;
size_t strnlen(char *x,size_t no){
	START_MEASURE(strlen);
	size_t r=strnlen3(x,no);
  COMMON_MEASURE(strlen);
	if (r==no) {FAILED(strlen)}
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
    FAILED(strrchr)
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
    FAILED(strchr);
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
    FAILED(strchr);
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
    FAILED(memchr);
		return NULL;
	}
}
char * rawmemchr(char *x,int c){return memchr(x,c,SIZE_MAX);}

char * strncpy(char *x,const char *y ,size_t n){
	START_MEASURE(strcpy);
	size_t i;

	for (i = 0 ; i!=n && y[i] != '\0' ; i++)
		x[i] = y[i];
  if (i!=n) x[i]=0;
	int r=i;
	COMMON_MEASURE(strcpy);
	return x;
}
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
  size_t ns=strlen(y);
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
	if (tolower(x[r])<tolower(y[r])) return -1;
	if (tolower(x[r])>tolower(y[r])) return 1;
	return 0;
}

int memcmp(unsigned char *x,unsigned char *y,size_t n){
	size_t i=0,r,ret2;

  START_MEASURE(strcmp);
	while(i!=n && x[i]==y[i]) i++;
  r=i;
	COMMON_MEASURE(strcmp);
  ret2=((int)x[i])-((int)y[i]);
	if ( i == n) ret2=0;
  return ret2;
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
  FAILED(bsearch)
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
  FAILED(lsearch)
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
 	if (x[r] == y[r]) return 0;

   FAILED(strcmp);
	if (x[r]<y[r]) return -1;
	if (x[r]>y[r]) return 1;
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
  size_t ns=strlen(y);
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
  size_t ns=strlen(y);
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
  FAILED(strstr)
	return NULL;	
}
char *strstr(char *x,char *y){return strstr2(x,y,0);}
char *strcasestr(char *x,char *y){return strstr2(x,y,1);}

char *memset(char *x,int c,size_t no){
  size_t r=no;size_t i;
  START_MEASURE(memset);
  for(i=0;i<no;i++) x[i]=c;
  COMMON_MEASURE(memset);
  return x;
}
char *bzero(char *x,size_t no){return memset(x,0,no);}

#include <stdint.h>
#include <ctype.h>

/* states: S_N: normal, S_I: comparing integral part, S_F: comparing
           fractionnal parts, S_Z: idem but with leading Zeroes only */
#define  S_N    0x0
#define  S_I    0x3
#define  S_F    0x6
#define  S_Z    0x9

/* result_type: CMP: return diff; LEN: compare using len_diff/diff */
#define  CMP    2
#define  LEN    3


/* Compare S1 and S2 as strings holding indices/version numbers,
   returning less than, equal to or greater than zero if S1 is less than,
   equal to or greater than S2 (for more info, see the texinfo doc).
*/

int
strverscmp (s1, s2)
     const unsigned char *s1;
     const unsigned char *s2;
{
  char *x=(char*)s1,*y=(char*)s2;
  size_t r;
  START_MEASURE(strverscmp)
  const unsigned char *p1 = (const unsigned char *) s1;
  const unsigned char *p2 = (const unsigned char *) s2;

  /* Symbol(s)    0       [1-9]   others
     Transition   (10) 0  (01) d  (00) x   */
  static const uint8_t next_state[] =
  {
      /* state    x    d    0  */
      /* S_N */  S_N, S_I, S_Z,
      /* S_I */  S_N, S_I, S_I,
      /* S_F */  S_N, S_F, S_F,
      /* S_Z */  S_N, S_F, S_Z
  };

  static const int8_t result_type[] =
  {
      /* state   x/x  x/d  x/0  d/x  d/d  d/0  0/x  0/d  0/0  */

      /* S_N */  CMP, CMP, CMP, CMP, LEN, CMP, CMP, CMP, CMP,
      /* S_I */  CMP, -1,  -1,  +1,  LEN, LEN, +1,  LEN, LEN,
      /* S_F */  CMP, CMP, CMP, CMP, CMP, CMP, CMP, CMP, CMP,
      /* S_Z */  CMP, +1,  +1,  -1,  CMP, CMP, -1,  CMP, CMP
  };

  if (p1 == p2){
    r=p1-s1;
    COMMON_MEASURE(strverscmp);
    
    return 0;
  }

  unsigned char c1 = *p1++;
  unsigned char c2 = *p2++;
  /* Hint: '0' is a digit too.  */
  int state = S_N + ((c1 == '0') + (isdigit (c1) != 0));

  int diff;
  while ((diff = c1 - c2) == 0)
    {
      if (c1 == '\0'){
    r=p1-s1;

  COMMON_MEASURE(strverscmp); 
	return diff;
  }
      state = next_state[state];
      c1 = *p1++;
      c2 = *p2++;
      state += (c1 == '0') + (isdigit (c1) != 0);
    }

  state = result_type[state * 3 + (((c2 == '0') + (isdigit (c2) != 0)))];

  switch (state)
  {
    case CMP:
    r=p1-s1;
{
  COMMON_MEASURE(strverscmp); }
      return diff;

    case LEN:
      while (isdigit (*p1++))
	if (!isdigit (*p2++)){
   r=p1-s1;
{
  COMMON_MEASURE(strverscmp);}

	  return 1;
}
  r=p1-s1;
{
  COMMON_MEASURE(strverscmp);
}
      return isdigit (*p2) ? -1 : diff;

    default:
  r=p1-s1;
{
  COMMON_MEASURE(strverscmp);
}
      return state;
  }
}

long strtol(const char *x, char **endptr, int base){
  START_MEASURE(strtol);
  char *end;
  long res=strtoll(x,&end,base);
  size_t r=end-x;
  if(endptr) *endptr=end;
  COMMON_MEASURE(strtol);
  return res;
}

/*void *calloc(size_t el,size_t s){ char *x=NULL;
  char *ret;
  size_t r=el*s,i;
  START_MEASURE(malloc);
  malloc(r);
  for(i=0;i<r;i++) ret[i]=0;
  COMMON_MEASURE(malloc);
  return ret;
}*/

void *__malloc2(size_t r){int i;
  START_MEASURE(malloc);
  __malloc_hook=__malloc_hook2;
  char *x=malloc(r);
  __malloc_hook=__malloc2;
  r=(r+7)/8;
  COMMON_MEASURE(malloc);
  pthread_t tid = pthread_self();
  int hash= ((12373*((long)x)/32)%(1<<20));
  for(i=0;i<8;i++) if ( mall_hash[hash].addr) hash++;
  if (!mall_hash[hash].addr){
    mall_hash[hash].addr=x;
    mall_hash[hash].size=r;
    mall_hash[hash].start=prof.malloc.last;
    mall_hash[hash].thread=tid;
  }
  if (!pthread_equal(main_tid,tid)) prof.malloc.extra[0]++; 
  return x;
}

void __free2(void *p){int i;
  START_MEASURE(free);
  __free_hook=__free_hook2;
  free(p);
  __free_hook=__free2;
  COMMON_MEASURE(free);
  if (!p) return;
  pthread_t tid = pthread_self();
  if (!pthread_equal(main_tid,tid)) prof.free.extra[0]++; 
  int hash= ((12373*((long)p)/32)%(1<<20));
  for(i=0;i<8;i++) if ( mall_hash[hash].addr!=p) hash++;
  if(mall_hash[hash].addr==p){
    mall_hash[hash].addr=0;
    size_t r = mall_hash[hash].size;
    prof.malloc_lifetime.start = mall_hash[hash].start;
    COMMON_MEASURE(malloc_lifetime);
    if (!pthread_equal(tid,mall_hash[hash].thread)) prof.malloc_lifetime.extra[0]++; 
  }
}

void *__realloc2(void *p,size_t s){int i;
  pthread_t tid = pthread_self();
  if (p){
    int hash= ((12373*((long)p)/32)%(1<<20));
    for(i=0;i<8;i++) if ( mall_hash[hash].addr!=p) hash++;
    if(mall_hash[hash].addr==p){
      mall_hash[hash].addr=0;
      size_t r = mall_hash[hash].size;
      prof.malloc_lifetime.start = mall_hash[hash].start;
      COMMON_MEASURE(malloc_lifetime);
      if (!pthread_equal(tid,mall_hash[hash].thread)) prof.malloc_lifetime.extra[0]++; 
    }
  }

  START_MEASURE(malloc);
  __realloc_hook=__realloc_hook2;
  char *x= realloc(p,s);
  __realloc_hook=__realloc2;
  COMMON_MEASURE(malloc);  
  r=(s+7)/8;
  int hash= ((12373*((long)x)/32)%(1<<20));
  for(i=0;i<8;i++) if ( mall_hash[hash].addr) hash++;
  if (!mall_hash[hash].addr){
    mall_hash[hash].addr=x;
    mall_hash[hash].size=r;
    mall_hash[hash].start=prof.malloc.last;
    mall_hash[hash].thread=tid;
  }
  return x;
}

void 
qsort (void *_x, size_t n, size_t s, __compar_fn_t cmp)
{
  char *x=_x;
  size_t r=n;
  size_t ns=s;
  START_MEASURE(qsort);
  qsort_r (x, n, s,  cmp, NULL);
  COMMON_MEASURE(qsort);
}

#define REDIR(alias,tp,name,args,carg,handle) \
tp name args{ \
  static tp (*func) args;\
  if(!func)\ 
    func= dlsym(handle, #name );\
  START_MEASURE(alias);\
  tp ret= func carg;\
  COMMON_MEASURE(alias);\
  return ret;\
}


REDIR(rand,int,rand,(),(),libc_handle)
REDIR(rand,long,random,(),(),libc_handle)
REDIR(rand,int,rand_r,(unsigned int *seed),(seed),libc_handle)

//REDIR(rand,int,random_r,(struct random_data *__restrict st,int32_t *ret),(st,ret),"libc.so.6")


double sin2(double arg){
  double (*func) (double);
  func= dlsym(libm_handle,"sin" );
  START_MEASURE(sin2);
  double ret= func(arg);
  COMMON_MEASURE(sin2);
  return ret;
}

double sin3(double arg){
  long double (*func) (long double);
  func= dlsym(libm_handle,"sinl" );
  START_MEASURE(sin3);
  double ret= func(arg);
  COMMON_MEASURE(sin3);
  return ret;
}

int sin_seed=42;
double sin(double arg){
  int var=rand_r(&sin_seed);
  return (var%2) ? sin2(arg) : sin3(arg); 
}

#include "mathfn.h"
