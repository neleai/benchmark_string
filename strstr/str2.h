#include <stdlib.h>
#include "../has_ssse3.h"
#include "vector.h"

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



#ifdef AS_STRSTR
   #define DETECT_ZERO_BYTE
  #define _AS_STRSTR(x) x 
  #define _AS_MEMMEM(x) 
#endif
#ifdef AS_MEMMEM
  #define DETECT_END s+ss-ns+check
  #define _AS_STRSTR(x) 
  #define _AS_MEMMEM(x) x
#endif
uchar *strstr_two_way(uchar *s, int ss, uchar *n, int ns)
{

   int fw,fwno,bw,bwno;
   int ell,   per, peri,pos;
   two_way_preprocessing(n,ns,&per,&ell,&peri);
   int check=min(ell+2,ns-1);
   uchar *skip_to=s+check;

   tp_vector vn0=BROADCAST(n[check-0]);
   tp_vector vn1=BROADCAST(n[check-1]);
   tp_vector e0,e1;

  #define TEST_CODE(so,sn) vzero;\
     e0   = TEST_EQ(CONCAT(sn,so,BYTES_AT_ONCE-0),vn0); \
     e1   = TEST_EQ(CONCAT(sn,so,BYTES_AT_ONCE-1),vn1); \
     mvec = AND(e0,e1);

  #define LOOP_BODY(p) \
     p = p - check;\
     pos = check + 1;\
     fwno = ns - pos;\
     fw = strcmp_dir(n + pos ,p + pos, fwno , 1);\
     if (fw < fwno ){\
       p += fw + check - ell + 1;\
     } else {\
       bwno = ell + 1;\
       bw = strcmp_dir(n + bwno - 1, p + bwno - 1, bwno, -1);\
       if ( bw < bwno ){\
         _AS_STRSTR(for(i=0;i<per;i++) if (!p[ns+i]) return NULL);\
         p += per;\
         if (peri){\
           while(1){\
             pos = max(ell, ns - per - 1) + 1;\
             fwno = ns - pos;\
             fw = strcmp_dir(n + pos ,p + pos, fwno , 1);\
             if (fw < fwno ){\
               p += fw + 1;\
               break ;\
             } else {\
               bwno = ell - ns - per - 1;\
               bw = strcmp_dir(n + ell, p + ell, bwno, -1);\
               if ( bw < bwno ){\
                 _AS_STRSTR(for(i=0;i<per;i++) if (!p[ns+i]) return NULL);\
                 p += per;\
               } else {\
                 return p;\
               }\
             }\
           }\
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

uchar *strstr_sse2( uchar *s,int ss,uchar *n,int ns){
  int buy=8*ns,rent=0; 
  tp_vector vn0=BROADCAST(n[ns-1-0]); 
  tp_vector vn1=BROADCAST(n[ns-1-1]);
  tp_vector e0,e1;

  #define DETECT_ZERO_BYTE

  #define TEST_CODE(so,sn) vzero;\
     e0   = TEST_EQ(CONCAT(sn,so,BYTES_AT_ONCE-0),vn0); \
     e1   = TEST_EQ(CONCAT(sn,so,BYTES_AT_ONCE-1),vn1); \
     mvec = (AND(e0,e1));

  #define LOOP_BODY(p) \
    p = p - (ns - 1);\
    if (p >= s){\
      int checked=strcmp_dir(p+ns-1-2,n+ns-1-2,ns-2,-1); \
      if (checked==ns-2) return p; \
      rent+=checked;\
      if(buy+(p-s)>rent) return strstr_two_way(p,ss,n,ns);\
    }

  #define LOOP_END(p) return NULL;
  #include "loop2.h"
}
#undef TEST_CODE
#undef LOOP_BODY
#undef LOOP_END



#ifdef AS_STRSTR
  #define STRCHR(s,c) strchr(s,c)
  #define ND_END(x) !n[x]
  #define HS_END(x) !s[x]
  uchar *strstr(const uchar *s,const uchar *n)
  #define SWITCH_IMPLEMENTATION return strstr_sse2((uchar*)s2,0,(uchar*)n,strlen(n));
#endif
#ifdef AS_MEMMEM
  #define STRCHR(s,c) strchr(s,s_end-s,c)
  #define ND_END(x) (x==ns)
  #define HS_END(x) (x==ss)
  uchar *memmem(const uchar *s,size_t ss,const uchar *n,size_t ns)
  #define SWITCH_IMPLEMENTATION return strstr_sse2(s2,s_end-s2,n,ns);
#endif
{
  uchar *s_end=NULL;
  _AS_MEMMEM(s_end=s+ss);
  uchar *s2=(uchar*)s;
  int i,cnt=0;
  int m=0;
  if(s2-s>=small_treshold) SWITCH_IMPLEMENTATION
  s2=STRCHR(s2+m,n[m]);
  while(s2){
    s2=s2-m;
    for (i=m; !ND_END(i) && n[i]==s2[i]; i++);
    if (ND_END(i)){
      cnt++;
      if(cnt==4) SWITCH_IMPLEMENTATION
      for(i=0;i<m && n[i]==s2[i]; i++);
      if(i==m) return s2;
    }
    m=i;
    if(HS_END(m)) return NULL;
    if(s2-s>=small_treshold) SWITCH_IMPLEMENTATION
    s2++;
    s2=STRCHR(s2+m,n[m]);
  }
  return NULL;
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



