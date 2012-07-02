#include "tests.h"
#include <string.h>
void init_gen(){}
void gen(){int k,i;
      for(k=0;k<ns;k++) needle[k]='a';
      for(k=0;k<ss;k++) haystack[k]='a';
      for(k=0;k<ss;k+=ns-1) haystack[k]='b';
}
#include "main.h"

