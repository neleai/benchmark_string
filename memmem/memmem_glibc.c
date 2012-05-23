#define _GNU_SOURCE
#include <string.h>

char *memmem2(char *s,int slen,char *n,int nlen)
{
  return memmem(s,slen,n,nlen);
}
