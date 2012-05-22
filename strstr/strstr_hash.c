#include "strstr_hash.h"
char *strstr2(char *s,char *n)
{
  return strstr_hash(s,strlen(s),n,strlen(n));
}
