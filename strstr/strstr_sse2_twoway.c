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

inline int max(int x,int y){ return x>y ? x : y; }
inline int min(int x,int y){ return x<y ? x : y; }

/* Computing of the maximal suffix */
int maxSuf(char *ne, int m, int *p,int ord) {
   int ms, j, k;
   char a, b;

   ms = -1;
   j = 0;
   k = *p = 1;
   while (j + k < m) {
      a = ne[j + k];
      b = ne[ms + k];
      if (ord ? a < b : a > b) {
         j += k;
         k = 1;
         *p = j - ms;
      }
      else
         if (a == b)
            if (k != *p)
               ++k;
            else {
               j += *p;
               k = 1;
            }
         else { /* a > b */
            ms = j;
            j = ms + 1;
            k = *p = 1;
         }
   }
   return(ms);
}


int cmp(char *a,char *b,int siz,int dir){ int i;
  for(i=0;i<siz;i++) {
    if (*a!=*b) return i;
    a+=dir;b+=dir;
  }
  return siz;
}

int periodic(char *a,char *b,int siz){int i;
  return cmp(a,b,siz,1)==siz;
}

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
  int ns=strlen(n);
  int offset=((long)(s))%BYTES_AT_ONCE;
  s2-=offset;
  el=LOAD(s2);
  e0=test_eq(el, mz);
  if (get_mask(e0)>>offset){
    for (i=offset;i<BYTES_AT_ONCE;i++){
      if(!s2[i]) return NULL;
      if (cmp(s2+i,n,ns,1)==ns)
        return s2+i;
    }
  }
  er=LOAD(s2+16);
  int u,v,up,vp;
  int per,ell;
  char *prefix;
  u=maxSuf(n,ns,&up,0);
  v=maxSuf(n,ns,&vp,1);
  ell = (u > v) ? u :  v;
  per = (u > v) ? up : vp;
  int chk= min(ell+1,ns-4);
  int peri = periodic(n, n + per, ell + 1);
  if (!peri)
    per = max(ell + 1, ns - ell - 1) + 1;
  m0=make_mask((char) n[chk+0],0);
  m1=make_mask((char) n[chk+1],0);
  m2=make_mask((char) n[chk+2],0);
  m3=make_mask((char) n[chk+3],0);

  phase2=4;
  e2=XOR(el,m0);
  e1=XOR(CONCAT(er,el,1),m1);
  e2=OR(e1,e2);
  mask=get_mask(test_eq(e2, mz));
  mask=forget_bits(mask,offset);
  int memory=NULL;
  while (1)
  {
    if(mask)
    {
      e1=XOR(CONCAT(er,el,2),m2);
      e2=OR(e1,e2);
      e1=XOR(CONCAT(er,el,3),m3);
      e2=OR(e1,e2);
      mask=get_mask(test_eq(e2, mz));
      if(mask){
        for(i=0; i<BYTES_AT_ONCE; i++) if (GET_BIT(mask,i))
        {
          char *p=s2+i-chk;
          if (!peri){
            int fw=cmp(p+chk+4,n+chk+4,ns-chk-4,1);
            if (fw==ns-chk-4) {
              int bw=cmp(p+chk,n+chk,chk,-1);
              if (bw==chk)
                return p;
              i+=per;
              if (i>=BYTES_AT_ONCE){ int j;
                for (j=BYTES_AT_ONCE;j<i;j++) { if (!s2[j]) return NULL;}
                s2+=BYTES_AT_ONCE*(i/BYTES_AT_ONCE-1);
                mask=0;
              }

            } else {
              i+=fw;
            }
          } else {
            if (p==prefix){
               int memc= ns-per-1;
               int ii=max(ell,memc)+1;
               int fw=cmp(p+ii,n+ii,ns-ii,1);
               if (fw>=ns-ii){
                 int bw =  cmp(p+ell,n+ell,memc,-1);
                 if (bw>=memc)
                   return p;
                 i+=per;
                 if (i>=BYTES_AT_ONCE){ int j;
                   for (j=BYTES_AT_ONCE;j<i;j++) { if (!s2[j]) return NULL;}
                   s2+=BYTES_AT_ONCE*(i/BYTES_AT_ONCE-1);
                   mask=0;
                 }
                 prefix=p+per;
               } else {
                 i+=fw;
               }   
            } else {
              int fw=cmp(p+4,n+chk+4,ns-chk-4,1);
              if (fw==ns-chk-4) {
                int bw=cmp(p,n+chk,chk,-1);
                if (bw==chk)
                  return p-chk;
                i+=per;
                if (i>=BYTES_AT_ONCE){ int j;
                  for (j=BYTES_AT_ONCE;j<i;j++) { if (!s2[j]) return NULL;}
                  s2+=BYTES_AT_ONCE*(i/BYTES_AT_ONCE-1);
                  mask=0;
                }
                prefix=p+per;
              } else {
                i+=fw;
              }
            }
          }
        }
        
      }
    }
    s2+=BYTES_AT_ONCE;
    el=er; 
    e0=test_eq(el, mz);
    if (get_mask(e0)){
      phase2=0;
      for (i=0;i<BYTES_AT_ONCE;i++){
        if(!s2[i]) return NULL;
        if (cmp(s2+i,n,ns,1)==ns)
          return s2+i;

      }
    }
    er=LOAD(s2+BYTES_AT_ONCE);
    e2=XOR(el,m0);
    e1=XOR(CONCAT(er,el,1),m1);
    e2=OR(e1,e2);
    mask=get_mask(test_eq(e2, mz));
  }
}
char *strstr2(char *s,char *n)
{
  int i;
  if(!n[0])return s;
  return _strstr(s,n,n[0],n[1],-32);
}
