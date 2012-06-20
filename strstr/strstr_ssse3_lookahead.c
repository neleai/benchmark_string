#include "bit_parallel.h"

#include <string.h>

inline int max(int x,int y){ return x>y ? x : y; }
inline int min(int x,int y){ return x<y ? x : y; }

#define ZEROMATCH(v,from,to)             e0=test_zero(v);\
    if (get_mask(e0)){ \
      for (i=from;i<to;i++){ \
        if (!s2[i]) return NULL; \
        for(j=0;n[j]&& s2[i+j]==n[j];j++);\
        if (!n[j]) return s2+i;\
      }\
    }



static inline char * _strstr(char *s,char *n,int ns,long size){
  char *s2;int i,j;

  
  MBTYPE el,er;
  MBTYPE m0,m1;
  MBTYPE e0,e1,e2,e0fw;
  MBTYPE mz=make_mask(0,0);
  m0=make_mask(n[0],0);
  m1=make_mask(n[1],0);

  MASKTYPE mask,nm;
  int offset=((long)(s))%BYTES_AT_ONCE;
  s2=s-offset;
  el=LOAD(s2);
  e0=test_zero(el);
  if (get_mask(e0)>>offset){
    for (i=offset;i<BYTES_AT_ONCE;i++){int j;
      if (!s2[i]) return NULL;
      for(j=0;n[j]&& s2[i+j]==n[j];j++);
      if (!n[j]) return s2+i;
    }
  }
  er=LOAD(s2+BYTES_AT_ONCE);
  ZEROMATCH(er,0,2*BYTES_AT_ONCE);
  e0=XOR(el,m0);
  e1=XOR(CONCAT(er,el,1),m1);
  e0fw=XOR(er,m0);
  e2=OR(e0,e1);
  mask=get_mask(test_zero(e2));
  nm=get_mask(test_zero(e0fw));
  mask=forget_bits(mask,offset);

  while(1){
    start:
    if (mask||nm){
      if(mask){
        for(i=0; i<BYTES_AT_ONCE; i++) if (GET_BIT(mask,i))
        {
          char *p=s2+i;
          for(j=2;n[j]&& p[j]==n[j];j++);
          if(!n[j]) return p;
        }
      }
      if (nm){
        el=er;
        s2+=BYTES_AT_ONCE;
        er=LOAD(s2+BYTES_AT_ONCE);
        e0fw=XOR(er,m0);
        ZEROMATCH(er,0,2*BYTES_AT_ONCE);
        e1=XOR(CONCAT(er,el,1),m1);
        mask=nm&get_mask(test_zero(e1));
        nm=get_mask(test_zero(e0fw));
        goto start;
      }
    }
    s2+=2*BYTES_AT_ONCE;
    el=LOAD(s2);
    ZEROMATCH(el,            0,  BYTES_AT_ONCE);
    er=LOAD(s2+BYTES_AT_ONCE);
    ZEROMATCH(el,BYTES_AT_ONCE,2*BYTES_AT_ONCE);
    e0=XOR(el,m0);
    e1=XOR(CONCAT(er,el,1),m1);
    e0fw=XOR(er,m0);
    e2=OR(e0,e1);
    mask=get_mask(test_zero(e2));
    nm=get_mask(test_zero(e0fw));
  }
}

char *strstr2(char *s,char *n)
{
  int i; int ns;
  if(!n[0])return s;
  if(!n[1]) return strchr(s,n[0]);
  for( ns=2; n[ns]; ns++) //TODO strlencmp(a,b) 
    if (!s[ns]) return NULL; 
  long size;
  if (ns==3)// for size 3 avoid calling strstr2
    size=-1000000000000L;
  else
    size=-8*ns;
  return _strstr(s,n,ns,size);
}
