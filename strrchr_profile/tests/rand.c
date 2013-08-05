#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <emmintrin.h>
static unsigned int r_seed;
void 
gen (char **dest, char **src, int size, int capa){
  int i;
	*dest=*dest+rand_r(&r_seed)%capa;
	*src=*src+rand_r(&r_seed)%capa;

	(*dest)[size]=0;
	(*src)[size]=0;

#ifdef DIRTY_CACHE
	/*As we wrote to writeback cache we are dealing with dirty cache lines.*/
#else
	for(i=0; i<=size+64; i+=64)
    {
		  __builtin_prefetch((*src) + i);
		  __builtin_prefetch((*dest) + i);			
	  }
#endif
#ifdef NO_CACHE
	for(i=0; i<=size; i+=64)
    {
      _mm_clflush((*src)+i);
      _mm_clflush((*dest)+i);
	  }
#endif

#ifdef NO_ICACHE
	forget_icache(rand_r(&r_seed)%2048);
	forget_icache(rand_r(&r_seed)%2048);
	forget_icache(rand_r(&r_seed)%2048);
	forget_icache(rand_r(&r_seed)%2048);
#endif

}

double dontopt = 0.0;
int main(){ int i,j,k;
	int ret=0;
	r_seed=42;
	int size;
	char *dest,*src;
	char *b2=malloc(2*SIZE+64);
	char *buf=malloc(2*SIZE+64);
	for(i=0;i<SIZE;i++)
    {
		  buf[i]=(rand_r(&r_seed)%128)+1;
		  b2[i]=(rand_r(&r_seed)%128)+1;
	  }
  for(k=0;k<1000000;k++)
    dontopt += exp(k);


	int sizes[]={160,1600,16000};
	for(j=0;j<3;j++){
		for(i=0;i<100000;i++){
			dest=buf; src=b2;
			gen(&dest,&src,size=rand_r(&r_seed)%sizes[j],SIZE);

			ret += (int) strrchr(dest,rand_r(&r_seed)%128);

			dest[size]=(rand_r(&r_seed)%128)+1;

		}
	}
	return ret;
}
