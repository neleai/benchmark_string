#include "strstr_hash.h"
#define CONVERT(x) tolower(x)
char *strcasestr2(char *s,char *n){
  return strstr_hash(s,strlen(s),n,strlen(n));
}
