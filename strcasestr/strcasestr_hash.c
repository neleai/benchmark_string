#define CONVERT(x) tolower(x)
#include "strstr_hash.h"
char *strcasestr2(char *s,char *n)
{
  return strstr_hash(s,strlen(s),n,strlen(n));
}
