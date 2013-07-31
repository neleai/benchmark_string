#include <string.h>
#include <emmintrin.h>
static unsigned int r_seed;
void gen(char **dst, char **src, int size,int capa){int i;
	*dst=*dst+rand_r(&r_seed)%capa;
	*src=*src+rand_r(&r_seed)%capa;

  for(i=0;i<size;i++){
    (*src)[i]=(rand_r(&r_seed)%128)+1;
  }
  (*src)[i]=0;

  #ifdef DIRTY_CACHE
    /*As we wrote to writeback cache we are dealing with dirty cache lines.*/
  #else
    for(i=0;i<=size+64;i+=64){
        _mm_prefetch((*src+i) ,_MM_HINT_T0);
        _mm_prefetch((*dst+i) ,_MM_HINT_T0);
    }
  #endif
  #ifdef NO_CACHE
    for(i=0;i<=size+64;i+=64){
      _mm_clflush((*src)+i);
      _mm_clflush((*dst)+i);
    }
  #endif

  #ifdef NO_ICACHE
    forget_icache(rand_r(&r_seed)%2048);
    forget_icache(rand_r(&r_seed)%2048);
    forget_icache(rand_r(&r_seed)%2048);
    forget_icache(rand_r(&r_seed)%2048);
  #endif

}

int main(){ int i,j,k;
  int ret=0;
  r_seed=42;
	int size;
	char *dest,*src;
	char *b2=malloc(2000000);
  char *buf=malloc(2000000);
	int sizes[]={160,1600,16000};
	for(j=0;j<3;j++){
	for(size=0;size<sizes[j];size++)
  for(i=0;i<100000/sizes[j];i++){
		dest=buf; src=b2;
    gen(&dest,&src,size,1000000);
    memcpy(dest,src,size);
  }
	}
  return ret;
}
