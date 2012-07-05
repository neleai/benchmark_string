/* blue */
int reversed(){return 1;}
#define AS_STRSTR
#define USE_SSE2
#define STRSTR __strstr_sse2
#include "strstr.h"

char *strstr2(char *s,size_t ss,char *n,size_t ns)
{
  return  __strstr_sse2(s,n);
}

