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
#define MATCH_REST int j;for(j=phase2;n[j] && n[j]==p[j];j++); \
  if (!n[j]) return p; \
size+=j; \
if ((long) size>1*(p-s)) return strstr_hash(p, strlen(p), n, strlen(n));

static inline char * _strstr(char *s ,char *n,char c1,char c2,long size )
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
  int phase2=0;
  char *s2=s;
  int offset=((long)(s))%BYTES_AT_ONCE;
  s2-=offset;
  el=LOAD(s2);
  e0=test_eq(el, mz);
  if (get_mask(e0)>>offset){
    for (i=offset;i<BYTES_AT_ONCE;i++){
      if(!s2[i]) return NULL;
      p=s2+i;
      MATCH_REST
    }
  }
  er=LOAD(s2+16);
  /*TODO handle period < 4 */
  m0=make_mask((char) n[0],0);
  m1=make_mask((char) n[1],0);
  m2=make_mask((char) n[2],0);
  m3=make_mask((char) n[3],0);
  uint64_t n64=0;
  uint64_t n64mask=0;
  int ns;
  for (ns=4;n[ns]&&ns<12;ns++) {
    n64=n64|(((uint64_t) n[ns])<<((ns-4)*8));
    n64mask=n64mask|(((uint64_t)255)<<((ns-4)*8));
  }
  
  phase2=4+ns;
  e0=XOR(el,m0);
  mask=get_mask(test_eq(e2, mz));
  mask=forget_bits(mask,offset);
  while (1)
  {
    if(mask){ 
      e1=XOR(CONCAT(er,el,1),m1);
      e0=XOR(CONCAT(er,el,2),m2);
      e2=OR(e0,e1);
      e1=XOR(CONCAT(er,el,3),m3);
      e2=OR(e1,e2);
      mask=mask&get_mask(test_eq(e2, mz));
      if(mask){
      /*
        for(i=0;i<16;i+=4){ if (adv[mask&(((1<<4)-1)<<(4*i))]){
          p=s2+i+adv[i]-1;
          if((*((uint64_t *)(s2+p+phase2-8)))&n64mask==n64){
            MATCH_REST
          }
        }}
       */

        uint64_t c= (*((uint64_t *)(s2+4)))&n64mask;
        for(i=0; i<BYTES_AT_ONCE; i++) 
        if (c==n64 && GET_BIT(mask,i))
        {
          p=s2+i;
          MATCH_REST
        }
        c=(c>>8)| (((uint64_t)s2[i+ns])<<(8*(ns-1)));
      }
    }
    s2+=BYTES_AT_ONCE;
    el=er; 
    e0=test_eq(el, mz);
    if (get_mask(e0)){
      phase2=0;
      for (i=0;i<BYTES_AT_ONCE;i++){
        if(!s2[i]) return NULL;
        p=s2+i;
        MATCH_REST
      }
    }
    er=LOAD(s2+BYTES_AT_ONCE);
    e0=XOR(el,m0);
    mask=get_mask(test_eq(e2, mz));
  }
}
char *strstr2(char *s,char *n)
{
  int i;
  if(!n[0])return s;
  return _strstr(s,n,n[0],n[1],-32);
}
