#include "tests.h"
#include <string.h>
void init_gen(){}
void gen(){int k;
      for(k=0;k<ns;k++) needle[k]=rand_r(&r_seed)%128+1;
      for(k=0;k<ss;k++) haystack[k]=rand_r(&r_seed)%128+1;
}
#include "main.h"
