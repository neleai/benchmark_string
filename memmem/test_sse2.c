/* blue */
int reversed(){return 1;}
#define AS_MEMMEM
#define USE_SSE2
#define MEMMEM __memmem_sse2
#include "strstr.h"

char *strstr2(char *s,size_t ss,char *n,size_t ns)
{
  return  __memmem_sse2(s,ss,n,ns);
}

