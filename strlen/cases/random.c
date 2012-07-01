#include "tests.h"
#include <string.h>
void init_gen(){}
void gen(){int k; int i;
      for(k=0;k<ns;k++) needle[k]=rand_r(&r_seed)%128+1;
      for(k=0;k<ss;k++) haystack[k]=rand_r(&r_seed)%128+1;
#ifdef NOCACHE
      for(i=0;i<ns;i+=64){ 
        _mm_clflush(needle+i);
      }
      for(i=0;i<ss;i+=64){ 
        _mm_clflush(haystack+i);
      }
#endif
}
#include "main.h"
