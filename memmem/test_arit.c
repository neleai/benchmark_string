/* yellow */
int reversed(){return 1;}
#define AS_MEMMEM
#define USE_ARIT
#define MEMMEM __memmem_arit
#include "strstr.h"

char *strstr2(char *s,size_t ss,char *n,size_t ns)
{
  return  __memmem_arit(s,ss,n,ns);
}

