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
#include "strstr_hash.h"
#define MATCH_REST int j;for(j=4;n[j] && n[j]==p[j];j++); \
if (!n[j]) return p; \
size+=j; \
if ((long) size>1*(p-s)) return strstr_hash(p, strlen(p), n, strlen(n));
#define MATCH_REST_END int j;for(j=0;n[j] && n[j]==p[j];j++); \
if (!n[j]) return p;

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
  MBTYPE e8;
  MBTYPE e9;
  MBTYPE m0=make_mask((char) c1,0);
  MBTYPE m1=make_mask((char) c2,0);
  MBTYPE m2=make_mask(0,0);
  MBTYPE m3=make_mask(n[2],0);
  MBTYPE m4=make_mask(n[3],0);

  char *s2=s;
  int offset=((long)(s))%BYTES_AT_ONCE;
  s2-=offset;
  MBTYPE eo=LOAD(s2);
  e5=test_eq(eo, m2);
  if( get_mask(e5)){
    for(i=0; i<BYTES_AT_ONCE; i++){
      p=s2+i;
      MATCH_REST_END
      if (!s2[i]) return NULL;
    }
  }
  MBTYPE en=LOAD(s2+BYTES_AT_ONCE);
      e0=XOR(eo, m0);
      e2=XOR(CONCAT(en,eo,1),m1);
      e2=OR(e0,e2);
      e4=XOR(CONCAT(en,eo,2),m3);
      e4=OR(e2,e4);
      e6=XOR(CONCAT(en,eo,3),m4);
      e6=OR(e4,e6);
      e6=test_eq(e6,m2);

  MASKTYPE mask=get_mask(e6);
  mask=forget_bits(mask,offset);
  while (1)
    {
      if(mask)
        {
          for(i=0; i<BYTES_AT_ONCE; i++) if (mask&(1<<i))
              {
                    p=s2+i;
                    MATCH_REST;
              }
        }
      s2+=BYTES_AT_ONCE;
      eo=en;
      e5=test_eq(eo, m2);
      if( get_mask(e5)){
        for(i=0; i<BYTES_AT_ONCE; i++){
            p=s2+i;
            MATCH_REST_END
            if (!s2[i]) return NULL;
        }
      }
      char* sn=s2+BYTES_AT_ONCE;
      en=LOAD(sn);
      e0=XOR(eo, m0);
      e2=XOR(CONCAT(en,eo,1),m1);
      e2=OR(e0,e2);
      e4=XOR(CONCAT(en,eo,2),m3);
      e4=OR(e2,e4);
      e6=XOR(CONCAT(en,eo,3),m4);
      e6=OR(e4,e6);
      e6=test_eq(e6,m2);
      mask=get_mask(e6);
    }
}
char *strstr2(char *s,char *n)
{
  int i;
  if(!n[0])return s;
  if (!n[1]||!n[2]||!n[3]) return strstr_hash(s,strlen(s),n,strlen(n));
  return _strstr(s,n,(char *)n[0],(char *)n[1],-32);
}
