#include "tests.h"
#include <string.h>
void init_gen(){}
void gen(){int k;
      for(k=0;k<ns;k++) needle[k]='a';
      needle[ns-1]='b';
      for(k=0;k<ss;k++) haystack[k]='a';
}
#include "main.h"

