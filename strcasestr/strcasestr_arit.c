/* generated from expression

STRCASESTR(n,c1l,c1u,c2l,c2u,size) = (char(c1l)|char(c1u)) (char(c2l) | char(c2u)) { MATCH_REST }
                                   | range(128,255) { MATCH_REST }
                                   | '\000' {return NULL;}
*/
#ifdef SSE2
#include "sse2.h"
#define STRCASESTR strcasestr_sse2
#elif AVX2
#include "avx2.h"
#define STRCASESTR strcasestr_avx2
#else
#include "arithmetic.h"
#define STRCASESTR strcasestr_arithmetic
#endif

#include <string.h>
#define CONVERT(x) tolower(x)
#include "strstr_hash.h"

#define MATCH_REST int j;for(j=0;n[j] && tolower(n[j])==tolower(p[j]);j++); \
if (!n[j]) return p; \
size+=j; \
if ((long) size>1*(p-s)) return strstr_hash(p, strlen(p), n, strlen(n));

static inline char * STRCASESTR(char *s ,char *n,char *c1l,char *c1u,char *c2l,char *c2u,char *size )
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
  MBTYPE e8;
  MBTYPE e9;
  MBTYPE e10;
  MBTYPE e11;
  MBTYPE e12;
  MBTYPE e13;
  MBTYPE m0=make_mask((char) c1l,0);
  MBTYPE m1=make_mask((char) c1u,0);
  MBTYPE m2=make_mask((char) c2l,1);
  MBTYPE m3=make_mask((char) c2u,1);
  MBTYPE m4=make_mask(1<<7,0);
  MBTYPE m5=make_mask(0,0);
  char *s2=s;
  int offset=((long)(s))%BYTES_AT_ONCE;
  s2-=offset;
  MBTYPE eo=LOAD(s2);
  e0=test_eq(eo, m0);
  e1=test_eq(eo, m1);
  e2=OR(e0,e1);
  e3=shift_down(eo,1);
  e4=test_eq(e3, m2);
  e5=test_eq(e3, m3);
  e6=OR(e4,e5);

  e8=AND(e2,e6);
  e9=AND(eo,m4);

  e11=test_eq(eo, m5);

  e13=OR(OR(e8,e9),e11);
  MASKTYPE mask=get_mask(e13);
  mask=forget_bits(mask,offset);
  while (1)
    {
      if(mask)
        {
          for(i=0; i<BYTES_AT_ONCE; i++) if (GET_BIT(mask,i))
              {
                if (GET_BIT(get_mask(e8),i))
                  {
                    p=s2+i;
                    MATCH_REST
                  }
                if (GET_BIT(get_mask(e9),i))
                  {
                    p=s2+i;
                    MATCH_REST
                  }
                if (GET_BIT(get_mask(e11),i))
                  {
                    p=s2+i;
                    return NULL;
                  }

              }
        }
      s2+=BYTES_AT_ONCE;
      eo=LOAD(s2);
      e0=test_eq(eo, m0);
      e1=test_eq(eo, m1);
      e2=OR(e0,e1);
      e3=shift_down(eo,1);
      e4=test_eq(e3, m2);
      e5=test_eq(e3, m3);
      e6=OR(e4,e5);

      e8=AND(e2,e6);
      e9=AND(eo,m4);

      e11=test_eq(eo, m5);

      e13=OR(OR(e8,e9),e11);
      mask=get_mask(e13);
    }
}
char *strcasestr2(char *s,char *n)
{
  if(!n[0])  return s;
  if (!n[1]) return strstr_hash(s,strlen(s),n,1);
  return STRCASESTR(s,n,tolower(n[0]),toupper(n[0]),tolower(n[1]),toupper(n[1]),-16);
}
