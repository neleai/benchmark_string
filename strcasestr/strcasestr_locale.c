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
#define CONVERT(x) tolower(x)
#include "strstr_hash.h"
#define MATCH_REST int j;for(j=0;n[j] && CONVERT(n[j])==CONVERT(p[j]);j++); \
if (!n[j]) return p; \
size+=j; \
if ((long) size>1*(p-s)) return strstr_hash(p, strlen(p), n, strlen(n));

static inline char * _strstr(char *s ,char *n,char *c1,char *c2,char *size )
{
  int i;
  char *p;
  MBTYPE e0;
  MBTYPE e1;
  MBTYPE e2;
  MBTYPE e3;
  MBTYPE e4;
  MBTYPE e5;
  MBTYPE e6;
  MBTYPE e7;
  MBTYPE m0=make_mask((char) c1|32,0);
  MBTYPE m1=make_mask((char) c2|32,1);
  MBTYPE m2=make_mask(0,0);
  MBTYPE mloc=make_mask(32,0);
  char *s2=s;
  int offset=((long)(s))%BYTES_AT_ONCE;
  s2-=offset;
  MBTYPE eo=LOAD(s2);
  MBTYPE eo2=OR(eo,mloc);
  e0=test_eq(eo2, m0);
  e1=shift_down(eo2,1);
  e2=test_eq(e1, m1);

  e4=AND(e0,e2);
  e5=test_eq(eo, m2);

  e7=OR(e4,e5);
  MASKTYPE mask=get_mask(e7);
  mask=forget_bits(mask,offset);
  while (1)
    {
      if(mask)
        {
          for(i=0; i<BYTES_AT_ONCE; i++) if (GET_BIT(mask,i))
              {
                if (GET_BIT(get_mask(e4),i))
                  {
                    p=s2+i;
                    MATCH_REST
                  }
                if (GET_BIT(get_mask(e5),i))
                  {
                    p=s2+i;
                    return NULL;
                  }

              }

        }
      s2+=BYTES_AT_ONCE;
      eo=LOAD(s2);
      eo2=OR(eo,mloc);
      e0=test_eq(eo2, m0);
      e1=shift_down(eo2,1);
      e2=test_eq(e1, m1);

      e4=AND(e0,e2);
      e5=test_eq(eo, m2);

      e7=OR(e4,e5);
      mask=get_mask(e7);
    }
}
char *strcasestr2(char *s,char *n)
{
  int i;
  if(!n[0])return s;
  if(!n[1]) return strstr_hash(s,strlen(s),n,strlen(n));
  return _strstr(s,n,(char *)n[0],(char *)n[1],-32);
}
