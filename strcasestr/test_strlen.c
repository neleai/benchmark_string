/* yellow */
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
int reversed(){return 0;}
char *strstr2(char *s,char *n)
{
  char *p= s+strlen(s)-strlen(n);
  return p>=s ? p : NULL;
}
