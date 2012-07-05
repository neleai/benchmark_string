/* blue */
int reversed(){return 1;}
#define AS_STRCASESTR
#define USE_SSE2
#define STRCASESTR __strcasestr_sse2
#include "strstr.h"

char *strstr2(char *s,size_t ss,char *n,size_t ns)
{
  return  __strcasestr_sse2(s,n);
}

