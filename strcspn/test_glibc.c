/* red */
#define _GNU_SOURCE
#include <string.h>
int reversed(){return 1;}
char *strstr4(char *s,size_t ss,char *n,size_t ns)
{
  return strcspn(s,n);
}

