/* yellow */
int reversed(){return 1;}
#define AS_STRCASESTR
#define USE_ARIT
#define STRCASESTR __strcasestr_arit
#include "strstr.h"

char *strstr2(char *s,size_t ss,char *n,size_t ns)
{
  return  __strcasestr_arit(s,n);
}

