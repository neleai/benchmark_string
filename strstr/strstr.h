#include <stdlib.h>
#include <string.h>
#include "vector.h"

SI int max(int x,int y){ return x>y ? x : y; }
SI int min(int x,int y){ return x<y ? x : y; }


#define CHAR(x) *(x)
static size_t strcmp_dir(const uchar *a,const uchar *b,size_t no,int dir){
  int i;
  for(i=0;i<no && CHAR(a)==CHAR(b);i++){a+=dir;b+=dir;}
  return i;
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
static uchar *strstr_two_way(uchar *s, int ss, uchar *n, int ns)
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
       p += fw + 1;\
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
  #include "loop.h"
}

static uchar *strstr_vec( uchar *s,int ss,uchar *n,int ns){
  int buy=8*ns+64,rent=0; 
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
    if(p>= s){\
      int checked=strcmp_dir(p+ns-1-2,n+ns-1-2,ns-2,-1); \
      if (checked==ns-2) return p; \
      rent+=checked;\
      if(buy+2*(p-s)>rent)        return strstr_two_way(p,ss,n,ns);\
    }

  #define LOOP_END(p) return NULL;
  #include "loop.h"
}
#undef TEST_CODE
#undef LOOP_BODY
#undef LOOP_END



#ifdef AS_STRSTR
  #define STRCHR(s,sn,c) strchr(s,c)
  uchar *STRSTR(const uchar *s,const uchar *n)
#endif
#ifdef AS_MEMMEM
  #define STRCHR(s,sn,c) strchr(s,c)
 uchar *memmem(const uchar *s,size_t ss,const uchar *n,size_t ns)
#endif
  #define SWITCH_IMPLEMENTATION return strstr_vec((uchar*)p,s_end-p,(uchar*)n,ns);
{
  int buy=small_treshold,rent=0;
#ifdef AS_MEMMEM
  uchar *s_end=s+ss;
  if( ns > ss) return NULL;
#endif
#ifdef AS_STRSTR
  uchar *s_end=NULL;
  int ns=0;
  while(n[ns]){
    if(!s[ns]) return NULL;
    ns++;
  }
#endif
  if (!ns) return (uchar*) s;
  uchar *p=(uchar*)s;
  p+=ns-1;
  while(1){
    p=(uchar*) STRCHR((char*)p,s_end-p,((char*)n)[ns-1]);
    if(!p) return NULL;
    p -= ns - 1;
    int check = strcmp_dir(n + ns - 1 -1  ,p + ns - 1 -1, ns - 1 , -1);
    if (check == ns - 1) return p;
    rent+=check+32;
    if(buy-(p-s)<rent) SWITCH_IMPLEMENTATION
    p++;
    p+= ns - 1;
  }
}


static int maxSuf(uchar *x, int m, int *p, int invert) {
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
 
static int periodic(uchar *a,uchar *b,int siz){
  return strcmp_dir(a,b,siz,1)==siz;
}

static void two_way_preprocessing(uchar *n,int ns,int *per2,int *ell2,int *peri){
  int u,v,up,vp;
  int per,ell;
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



