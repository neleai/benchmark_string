typedef unsigned char uchar;
#include "sse2.h"
#include <string.h>
static int cmp(uchar *a,uchar *b,int no,int dir){int i;
	for(i=0;i<no && CHAR(a)==CHAR(b);i++) {a+=dir;b+=dir;}
	return i;
}
static inline int max(int x,int y){ return x>y ? x : y; }
static inline int min(int x,int y){ return x<y ? x : y; }
static int periodic(uchar *a,uchar *b,int siz){int i;
  return cmp(a,b,siz,1)==siz;
}

static int maxSuf(uchar *n, int ns, int *p,int ord) {
   int ms, j, k;
   uchar a, b;

   ms = -1;
   j = 0;
   k = *p = 1;
   while (j + k < ns) {
      a = CHAR(n + j + k);
      b = CHAR(n + ms + k);
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
static void two_way_preprocessing(uchar *n,int ns,int *per2,int *ell2){
  int u,v,up,vp;
  int per,ell;
  uchar *prefix;
  u=maxSuf(n,ns,&up,0);
  v=maxSuf(n,ns,&vp,1);
  ell = (u > v) ? u :  v;
  per = (u > v) ? up : vp;
  int chk      = min(ell+1,ns-4);
  int peri = periodic(n, n + per, ell + 1);
  if (!peri)
    per = max(ell + 1, ns - ell - 1) + 1;
	*per2=per;
	*ell2=ell;
}

uchar *strstr2two_way(uchar *s,int ss,uchar *n,int ns){
}

#define MASKEXP0 domask(0) MASKEXP
#define MASKEXP  domask(1) domask(2) domask(3) \
       domask(4) domask(5) domask(6) domask(7)
//extern int reverse;
static uchar *strstr2v(uchar *s,uchar *n,int ns,uchar *s_end){int i;
//	reverse=1;
//	revers();
	int rent=0;
	int buy=8*ns;
	int scan2=min(ns,phase2);
  int u,v,up,vp;
  int per,ell;
  uchar *prefix;
	ell=ns-scan2;
  int chk= min(ell+scan2,ns);
	int fwn=ns-chk,bwn=chk-scan2;
	uchar *fwp=n+ns-fwn,*bwp=n+bwn-1;
	
	per=1;

	tp_mask mask,zmask,mask2;
	tp_vector vzero=zerov();
	tp_vector sn,so;
	tp_vector e;
	#undef domask
	#define domask(x) tp_vector m##x; if(chk-1-x>=0) m##x=make_mask(n[chk-1-x]);
	MASKEXP0
	uchar *sr=s+chk-1;
	int offset=((long)sr)%(PARA);
	uchar *s2=sr-offset;
	
	sn=(s2>s) ? LOAD(s2-BYTES_AT_ONCE) : vzero;
#ifdef SIZE_SUPPLIED
	#define ZERO_TEST_INIT zmask= (s_end<s2+PARA) ? (((tp_mask)1)<<(s_end-s2)) : 0;
	#define ZERO_TEST
#else
	#define ZERO_TEST_INIT zmask= 0;
	#define ZERO_TEST      zmask= zmask|(find_zeros(sn)<<(i*BYTES_AT_ONCE));
#endif
#undef domask
#define domask(x) if(phase1-1>=x){ e=  OR(e, XOR(CONCAT(sn,so,BYTES_AT_ONCE-x),m##x)); }
#define PHASE1 \
	ZERO_TEST_INIT\
	mask=0;\
	for(i=0;i<unroll;i++){\
		so=sn; \
		sn=LOAD(s2+i*BYTES_AT_ONCE);\
		ZERO_TEST\
		if(phase1-1>=0){	e= XOR(sn,m0 );}\
		MASKEXP\
		mask|=(find_zeros(e)<<(i*BYTES_AT_ONCE));\
	}

	PHASE1
	mask  =forget_bits( mask,offset);
	zmask =forget_bits(zmask,offset);

	while(1){
		if(prefetch) PREFETCH(s2+prefetch*64);
		if(mask|zmask){
			if(scan2>phase1){
				sn=(s2>s) ? LOAD(s2-BYTES_AT_ONCE) : vzero;
				mask2=0;
				for(i=0;i<unroll;i++){
					so=sn;
					sn=LOAD(s2+i*BYTES_AT_ONCE);
					e=vzero;
					/*ssse3 has no instruction for variable length shift*/
					#undef domask
					#define domask(x) if(phase1-1<x&& scan2-1>=x){ e=  OR(e, XOR(CONCAT(sn,so,BYTES_AT_ONCE-x),m##x)); }
					MASKEXP
					mask2|=(find_zeros(e)<<(i*BYTES_AT_ONCE));
				}
				mask&=mask2;
			}
			if(mask|zmask){
				if(__builtin_expect(zmask,0)){
					int zpos=first_bit(zmask);
					mask=forget_high_bits(mask,zpos);
				}
				while(mask){
					int i=first_bit(mask);
					uchar *p=s2+i-chk+1;
					int checked;
					if((checked=cmp(p+bwn-1,bwp,bwn,-1))==bwn){
						return p;
					}else{
						i+=per;
					}
					rent+=checked;
					mask=forget_bits(mask,i);
				}
/*				if(rent-4*(s2-s)>buy)
					return strstr2two_way(s,n,ns,s_end);*/


				if(__builtin_expect(zmask,0)) return NULL;
			}
		}
		s2+=PARA;
		#undef domask
		#define domask(x) if(phase1-1>=x){ e=  OR(e, XOR(CONCAT(sn,so,BYTES_AT_ONCE-x),m##x)); }
		PHASE1	
	}
}

#ifdef SIZE_SUPPLIED
#define ND_END(x) (x==ns)
#define HS_END(x) (x==ss)
uchar *strstr2(uchar *s,int ss,uchar *n,int ns){
	int i;
	uchar *s_end=s+ss;
#define STRCHR(x,y) memchr(x,y,s_end-x)
#else
#define ND_END(x) !n[x]
#define HS_END(x) !s[x]
#define STRCHR strchr
uchar *strstr2(uchar *s,uchar *n){
	int i,ns=0,ss=0;
	uchar *s_end=NULL;
#endif
	int cnt=0;uchar *so=s;
	int m=0;
	if(s-so>=treshold) return strstr2v(s,n,strlen(n),s_end);
	s=STRCHR(s+m,n[m]);
  while(s){
		s=s-m;
		for (i=m; !ND_END(i) && CHAR(n+i)==CHAR(s+i); i++);
		if (ND_END(i)){
			cnt++;
			if(cnt==4) return strstr2v(s,n,i,s_end);
			for(i=0;i<m && CHAR(n+i)==CHAR(s+i); i++);
			if(i==m) return s;
		}
		m=i;
		if(HS_END(m)) return NULL;
		if(s-so>=treshold) return strstr2v(s,n,strlen(n),s_end);
    s++;
    s=STRCHR(s+m,n[m]);
  }
  return NULL;
}

