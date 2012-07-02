#include <stdlib.h>
#include "vector.h"
typedef unsigned char uchar;

static inline int max(int x,int y){ return x>y ? x : y; }
static inline int min(int x,int y){ return x<y ? x : y; }

#define CHAR(x) *(x)
static size_t strcmp_dir(const uchar *a,const uchar *b,size_t no,int dir){
  int i;
  for(i=0;i<no && CHAR(a)==CHAR(b);i++){a+=dir;b+=dir;}
  return i;
}

static int periodic(uchar *a,uchar *b,int siz){int i;
  return strcmp_dir(a,b,siz,1)==siz;
}

/* Two way algorithm: CROCHEMORE M., PERRIN D., 1991, Two-way string-matching, Journal of the ACM 38(3):651-675.
   Implementation based from http://www-igm.univ-mlv.fr/~lecroq/string/node26.html
*/
static void two_way_preprocessing(uchar *n,int ns,int *per2,int *ell2,int *peri);


uchar *strstr_sse2( uchar *s,int ss,uchar *n,int ns){
  
  tp_vector vn0=BROADCAST(n[ns-1-0]); 
  tp_vector vn1=BROADCAST(n[ns-1-1]);
  tp_vector e0,e1;

  #define DETECT_ZERO_BYTE

  #define TEST_CODE(so,sn) vzero;\
     e0   = TEST_EQ(CONCAT(sn,so,BYTES_AT_ONCE-0),vn0); \
     e1   = TEST_EQ(CONCAT(sn,so,BYTES_AT_ONCE-1),vn1); \
     mvec = (AND(e0,e1));

  #define LOOP_BODY(p) \
    int checked=strcmp_dir(p,n+ns-1-2,ns-2,-1); \
    if (checked==ns-2) return p-(ns-1); 

  #define LOOP_END(p) return NULL;
  #define CAN_SKIP
  uchar *skip_to=s+ns-1;
  #include "loop2.h"

}
#undef TEST_CODE
#undef LOOP_BODY
#undef LOOP_END

uchar * strstr_two_way_periodic(uchar *s, int ss, uchar *n, int ns);


#ifdef AS_STRSTR
   #define DETECT_ZERO_BYTE
  #define _AS_STRSTR(x) x 
  #define _AS_MEMMEM(x) 
  uchar *strstr_two_way(uchar *s, uchar *n, int ns)
#endif
#ifdef AS_MEMMEM
  #define DETECT_END s+ss-ns+check
  #define _AS_STRSTR(x) 
  #define _AS_MEMMEM(x) x
  uchar *strstr_two_way(uchar *s, int ss, uchar *n, int ns)
#endif
{
   int fw,fwno,bw,bwno;
   int ell, memory,  per, peri,pos;
   two_way_preprocessing(n,ns,&per,&ell,&peri);
   int check=min(ell+2,ns-1);
   tp_vector vn0=BROADCAST(n[check-0]);
   tp_vector vn1=BROADCAST(n[check-1]);
   tp_vector e0,e1;
   uchar *skip_to=s+check;
   uchar *memo_pos=NULL;

  #define TEST_CODE(so,sn) vzero;\
     e0   = TEST_EQ(CONCAT(sn,so,BYTES_AT_ONCE-0),vn0); \
     e1   = TEST_EQ(CONCAT(sn,so,BYTES_AT_ONCE-1),vn1); \
     mvec = AND(e0,e1);

  #define LOOP_BODY(p) \
     p = p - check;\
     if (p!=memo_pos) memory = -1;\
     pos = max(ell, memory) + 1;\
     fwno = ns - pos;\
     fw = strcmp_dir(n + pos ,p + pos, fwno , 1);\
     if (fw < fwno ){\
       p += fw + 1;\
       _AS_STRSTR( if (*(p + pos + fw)==0) return NULL;); \
       memory = -1;\
       memo_pos = NULL;\
     } else {\
       bwno = ell - memory;\
       bw = strcmp_dir(n + ell, p + ell, bwno, -1);\
       if ( bw < bwno ){\
         p += per;\
         if (peri){\
           memo_pos = p;\
           memory   = ns - per - 1;\
         }\
       } else {\
         return p;\
       }\
     }\
     skip_to = p + check;

  #define LOOP_END(p) return NULL;
  #define CAN_SKIP
  #include "loop2.h"

}



uchar * strstr(uchar *s, uchar *n){
  return strstr_two_way(s,n,strlen(n));
}
int maxSuf(uchar *x, int m, int *p, int invert) {
   int ms, j, k;
   uchar a, b;

   ms = -1;
   j = 0;
   k = *p = 1;
   while (j + k < m) {
      a = CHAR(x + j + k);
      b = CHAR(x + ms + k);
      if (invert ? (a > b) : (a < b)) {
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
 

static void two_way_preprocessing(uchar *n,int ns,int *per2,int *ell2,int *peri){
  int u,v,up,vp;
  int per,ell;
  uchar *prefix;
  u=maxSuf(n,ns,&up,0);
  v=maxSuf(n,ns,&vp,1);
  ell = (u > v) ? u :  v;
  per = (u > v) ? up : vp;
  *peri = periodic(n, n + per, ell + 1);
  if (!*peri)
    per = max(ell + 1, ns - ell - 1) + 1;
  *per2=per;
  *ell2=ell;
}



