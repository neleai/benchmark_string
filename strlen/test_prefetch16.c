/* orange */
const int unroll   = 4
,         phase1   = 2
,         phase2   = 8
,         prefetch = 16
,         treshold = 128
;
#define PREFETCH(x)	_mm_prefetch(x,_MM_HINT_NTA);

#include <stdlib.h>
int reversed(){return 0;}
char *strstr2(char *s,char *n)
{
  char *p= s+strlen2(s);
  return p;
}

#include "strlen.h"

