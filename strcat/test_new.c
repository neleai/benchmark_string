/* blue */
const int unroll   = 4
,         phase1   = 2
,         phase2   = 8
,         prefetch = 8
,         treshold = 128
;
#include <stdlib.h>
int reversed(){return 1;}
char *strcat2( char *s,char *n);
char *strstr2(char *s,char *n)
{
  return strcat2(s,n);
}

#include "strcat.c"

