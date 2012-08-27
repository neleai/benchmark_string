/* cyan */
int reversed(){return 1;}
#define USE_SSE2
#define STRSPN __strspn_sse2
#include "strspn.h"

char *strstr2(char *s,size_t ss,char *n,size_t ns)
{
  return  __strspn_sse2(s,n);
}

