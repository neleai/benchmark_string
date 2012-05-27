/* generated from expression

_strstr(n,c1,c2,size) = char(c1) char(c2) {MATCH_REST}
                     | '\000' {return NULL;}

*/

#ifdef ARITHMETIC
#include "arithmetic.h"
#elif AVX2
#include "avx2.h"
#else
#include "sse2.h"
#endif

#include <string.h>
char * strlen2(char *s ,char c)
{
  int i;
  char *p;
  MBTYPE el,er;
  MBTYPE e0;
  MBTYPE e1;
  MBTYPE e2;
  MBTYPE e3;
  MBTYPE e4;
  MBTYPE e5;
  MBTYPE e6;
  MBTYPE e7;
  MBTYPE mz=make_mask(0,0);
  MBTYPE m0,m1,m2,m3;
  MASKTYPE mask,ml;
  char *s2=s;
  int offset=((long)(s))%BYTES_AT_ONCE;
  s2-=offset;
  el=LOAD(s2);
  e0=test_eq(el,mz);
  mask=get_mask(e0);
  mask=forget_bits(mask,offset);
  while (1)
  {
    if(mask){ 
      return s2-s+firstbit(mask);
    }
    s2+=BYTES_AT_ONCE;
    el=LOAD(s2);
    e0=test_eq(el,mz);
    e2=OR(e0,e1);
    mask=get_mask(e2);
  }
}

