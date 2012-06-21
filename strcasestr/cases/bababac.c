#include "tests.h"
#include <string.h>
void init_gen(){}
void gen(){int k;
      for(k=0;k<ns;k+=2) { needle[k]='a';needle[k+1]='b'; }
      needle[ns-1]='c';
      for(k=0;k<ss;k+=2) { haystack[k]='a'; haystack[k+1]='b'; }
}
#include "main.h"

