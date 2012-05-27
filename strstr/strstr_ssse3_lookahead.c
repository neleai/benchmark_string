#include "bit_parallel.h"

#include <string.h>

inline int max(int x,int y){ return x>y ? x : y; }
inline int min(int x,int y){ return x<y ? x : y; }

static inline char * _strstr(char *s,char *n,int ns,long size){
  char *s2;int i,j;

  
  MBTYPE el,er;
  MBTYPE m0,m1;
  MBTYPE e0,e1,e2;
  MBTYPE mz=make_mask(0,0);
  MASKTYPE mask;
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
  m0=make_mask((char) n[0],0);
  m1=make_mask((char) n[1],0);
  e2=XOR(el,m0);
  e1=XOR(CONCAT(er,el,1),m1);
  e2=OR(e1,e2);
  mask=get_mask(test_zero(e2));
  mask=forget_bits(mask,offset);
  while(1){
    if (mask){
      for(i=0; i<BYTES_AT_ONCE; i++) if (GET_BIT(mask,i))
      {
        char *p=s2+i;
        for(j=2;n[j]&& p[j]==n[j];j++);
        if(!n[j]) return p;
        size+=j;
      }
      size+=16;
//      if (4*size> (s2-s)) return _strstr2(s2,n,ns,size);
    }
    s2+=BYTES_AT_ONCE;
    el=er;
    e0=test_zero(el);
    if (get_mask(e0)){
      for (i=0;i<BYTES_AT_ONCE;i++){
        if (!s2[i]) return NULL;
        for(j=0;n[j]&& s2[i+j]==n[j];j++);
        if (!n[j]) return s2+i; 
      }
    }
    er=LOAD(s2+BYTES_AT_ONCE);
    e2=XOR(el,m0);
    e1=XOR(CONCAT(er,el,1),m1);
    e2=OR(e1,e2);
    mask=get_mask(test_zero(e2));
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
