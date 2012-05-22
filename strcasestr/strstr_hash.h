#include <stdlib.h>
#ifndef CONVERT
#define CONVERT(x) x
#endif
#define SL sizeof(long)
int mseed;
static  char *single_nhash(char *s,int slen,char *n,int nlen)
{
  int i;
  long nhash=0;
  long shash=0;
  long mask=((((long)1)<<(8*nlen))-1);
  for(i=0; i<nlen; i++)
    {
      nhash=(nhash<<8)+CONVERT(n[i]);
      shash=(shash<<8)+CONVERT(s[i]);
    }
  for(i=0; i<=slen-nlen; i++)
    {
      if (nhash==shash)
        {
          return s+i;
        }
      shash=((shash<<8)+CONVERT(s[i+nlen]))&mask;
    }
  return NULL;
}
static char *double_nhash(char *s,int slen,char *n,int nlen)
{
  int i;
  long nhash1=0;
  long shash1=0;
  long nhash2=0;
  long shash2=0;
  for(i=0; i<SL; i++)
    {
      nhash1=(nhash1<<8)+CONVERT(n[i]);
      shash1=(shash1<<8)+CONVERT(s[i]);
      nhash2=(nhash2<<8)+CONVERT(n[nlen-SL+i]);
      shash2=(shash2<<8)+CONVERT(s[nlen-SL+i]);
    }
  for(i=0; i<=slen-nlen; i++)
    {
      if (nhash1==shash1&&nhash2==shash2)
        {
          return s+i;
        }
      shash1=(shash1<<8)+CONVERT(s[i+SL]);
      shash2=(shash2<<8)+CONVERT(s[i+nlen]);
    }
  return NULL;
}
static __attribute__ ((noinline)) char *strstr_hash(char *s,int slen,char *n,int nlen)
{
  int i;
  if (slen<nlen) return NULL;
  if(nlen<SL   ) return single_nhash(s,slen,n,nlen);
  if(nlen<=2*SL) return double_nhash(s,slen,n,nlen);
  mseed+=(long) s + (long) n;
  long r= 2*((((long)rand_r(&mseed)<<(sizeof(int)*8))+rand_r(&mseed)))+1;
  long nhash=0;
  long shash=0;
  long m=1;
  for(i=0; i<nlen; i++)
    {
      nhash=r*nhash+CONVERT(n[i]);
      shash=r*shash+CONVERT(s[i]);
      m*=r;
    }
  for(i=0; i<=slen-nlen; i++)
    {
      if (nhash==shash)
        {
          if (!strncmp(n,s+i,nlen)) return s+i;
        }
      shash=r*shash+CONVERT(s[i+nlen])-m*CONVERT(s[i]);
    }
  return NULL;
}

