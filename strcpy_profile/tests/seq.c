#include <string.h>
#include <emmintrin.h>
static unsigned int r_seed;

char *gen(char *buf,int size,int offset){int i;
  for(i=0;i<size;i++){
    buf[i+offset]=(rand_r(&r_seed)%128)+1;
  }
  buf[i+offset]=0;

  #ifdef DIRTY_CACHE
    /*As we wrote to writeback cache we are dealing with dirty cache lines.*/
  #else
    for(i=0;i<=size+64;i+=64){
        _mm_prefetch(buf+i+offset ,_MM_HINT_T0);
    }
  #endif
  #ifdef NO_CACHE
    for(i=-64;i<=size+64;i+=64){
      _mm_clflush(buf+i+offset);
    }
  #endif

  #ifdef NO_ICACHE
    forget_icache(rand_r(&r_seed)%2048);
    forget_icache(rand_r(&r_seed)%2048);
    forget_icache(rand_r(&r_seed)%2048);
    forget_icache(rand_r(&r_seed)%2048);
  #endif

  return buf+offset;
}

int main(){ int i,j,k;
  int ret=0;
  r_seed=42;
  char *buf=malloc(2000000),*p;
  for(i=1;i<16000;i++){
    for(j=0;j<160000/i;j++){
      p=gen(buf,rand_r(&r_seed)%i,rand_r(&r_seed)%1000000);
      ret+=strlen(p);
    }
  }
  return ret;
}
