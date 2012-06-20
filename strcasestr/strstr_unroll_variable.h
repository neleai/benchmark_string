#include "sse2.h"
#include <string.h>
static int cmp(char *a,char *b,int no,int dir){int i;
	for(i=0;i<no && tolower_ary[*a]==tolower_ary[*b];i++) {a+=dir;b+=dir;}
	return i;
}
static inline int max(int x,int y){ return x>y ? x : y; }
static inline int min(int x,int y){ return x<y ? x : y; }
static int periodic(char *a,char *b,int siz){int i;
  return cmp(a,b,siz,1)==siz;
}

static int maxSuf(char *ne, int m, int *p,int ord) {
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

#define PARA unroll*BYTES_AT_ONCE

#define MASKEXP0 domask(0) MASKEXP
#define MASKEXP  domask(1) domask(2) domask(3) \
       domask(4) domask(5) domask(6) domask(7)
//extern int reverse;
static int inited=0;
static char *strstr2fast(char *s,char *n,int ns,char *s_end,int phase2){int i;
//	reverse=1;
//	revers();
	int scan2=min(ns,phase2);
  int u,v,up,vp;
  int per,ell;
  char *prefix;
	ell=ns-scan2;
  int chk= min(ell+scan2,ns);
	int fwn=ns-chk,bwn=chk;
	char *fwp=n+ns-fwn,*bwp=n+bwn-1;
	
	per=1;

	tp_mask mask,zmask,mask2;
	int tolower_bit=32;
	tp_vector vzero=zerov(),tolower_bits=make_mask(tolower_bit);
	tp_vector sn,so;
	tp_vector e;
	#undef domask
	#define domask(x) tp_vector m##x; if(chk-1-x>=0) m##x=make_mask(n[chk-1-x]|tolower_bit);
	MASKEXP0
	char *sr=s+chk-1;
	int offset=((long)sr)%(PARA);
	char *s2=sr-offset;
	
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
		sn=OR(sn,tolower_bits);\
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
					char *p=s2+i-chk+1;
					
					if(cmp(p+bwn-1,bwp,bwn,-1)==bwn){
						return p;
					}else{
						i+=per;
					}
					mask=forget_bits(mask,i);
				}
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
unsigned char *strstr2(unsigned char *s,int ss,unsigned char *n,int ns){
	int i;
	char *s_end=s+ss;
#define STRCHR(x,y) memchr(x,y,s_end-x)
#else
#define ND_END(x) !n[x]
#define HS_END(x) !s[x]
#define STRCHR strchr
unsigned char *strstr2(unsigned char *s,unsigned char *n){
	int i,ns=0,ss=0,k;
	char *s_end=NULL;
#endif

	if(!inited){
		calculate_tables();
		inited=1;
	}
	#define eq_fast(p) (casefold_equivalence_class_no[p]==1 || (casefold_equivalence_class_no[p]==2 && casefold_equivalence_class[p][0]^casefold_equivalence_class[p][1]==32))
	if( eq_fast(n[0]) && eq_fast(n[1]) ){
		for (k=2;n[k] && eq_fast(n[k]);k++);
		return strstr2fast(s,n,strlen(n),NULL,k-1);
	}
}

