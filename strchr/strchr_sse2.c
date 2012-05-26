/* generated from expression

_strstr(n,c1,c2,size) = char(c1) char(c2) {MATCH_REST}
                     | '\000' {return NULL;}

*/
#define SSE2

#ifdef SSE2
#include "sse2.h"
#define STRSTR strstr_sse2
#elif AVX2
#include "avx2.h"
#define STRSTR strstr_avx2
#else
#include "arithmetic.h"
#define STRSTR strstr_arithmetic
#endif

#include <string.h>
char * strchr2(char *s ,char c)
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
  MASKTYPE mask;
  char *s2=s;
  int offset=((long)(s))%BYTES_AT_ONCE;
  s2-=offset;
  m0=make_mask((char) c,0);
  el=LOAD(s2);
  e0=test_eq(el,mz);
  e1=test_eq(el,m0);
  e2=OR(e0,e1);
  mask=get_mask(e2);
  mask=forget_bits(mask,offset);
  while (1)
  {
    if(mask)
    {
      int bz=__builtin_ctz(mask);
      if (s2[bz]) 
        return s2+bz;
      else
        return NULL;
    }
    s2+=BYTES_AT_ONCE;
    el=LOAD(s2);
    e0=test_eq(el,mz);
    e1=test_eq(el,m0);
    e2=OR(e0,e1);
    mask=get_mask(e2);
  }
}

