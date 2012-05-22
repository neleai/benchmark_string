#include "strstr_hash.h"
char *memmem2(char *s,int slen,char *n,int nlen){
  return strstr_hash(s,slen,n,nlen);
}
