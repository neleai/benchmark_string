/* green */
int reversed(){return 1;}
#define AS_STRCASESTR
#define USE_SSE4_1
#define STRCASESTR __strcasestr_sse4_1
#include "strstr.h"

char *strstr2(char *s,size_t ss,char *n,size_t ns)
{
  return  __strcasestr_sse4_1(s,n);
}

