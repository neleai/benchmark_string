/* cyan */
int reversed(){return 1;}
#define AS_MEMMEM
#define USE_SSSE3
#define MEMMEM __memmem_ssse3
#include "strstr.h"

char *strstr2(char *s,size_t ss,char *n,size_t ns)
{
  return  __memmem_ssse3(s,ss,n,ns);
}

