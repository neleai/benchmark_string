/*worst case strings for two way algoritm*/
#include "tests.h"
#include <string.h>
void init_gen(){}
void gen(){int k,i;
      for(k=0;k<ns;k++) {
        needle[k]='a';
      }
      needle[ns-1]='b';
      needle[0]='b';

      for(k=0;k<ss;k++) {
        if((k%3) && (rand_r(&r_seed)%2))
          haystack[k]='a';
        else
          haystack[k]='b';
      }

}
#include "main.h"

