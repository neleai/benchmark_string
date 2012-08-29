/* red */
#include <string.h>
int reversed(){return 1;}
#define AS_STRSTR
#define USE_SSSE3
#define STRSTR __strstr_ssse3
#include "strstr.h"

char *strstr2(char *s,size_t ss,char *n,size_t ns)
{
  return  strstr_two_way(s,NULL,n,strlen(n));
}

