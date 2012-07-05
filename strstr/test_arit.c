/* yellow */
int reversed(){return 1;}
#define AS_STRSTR
#define USE_ARIT
#define STRSTR __strstr_arit
#include "strstr.h"

char *strstr2(char *s,size_t ss,char *n,size_t ns)
{
  return  __strstr_arit(s,n);
}

