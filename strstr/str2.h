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

/* Two Way string matching algorithm. */
uchar * strstr_two_way(uchar *s, int ss, uchar *n, int ns) {
   if(ns==0) return s;
   if(ns==1) return strchr(s,n[0]);
   int i, ell, memory, p, per, q,peri,pos;
   int fw,fwno,bw,bwno,skip;
   uchar *so = s;
   two_way_preprocessing(n,ns,&per,&ell,&peri);

   
   /* Searching */
   memory = -1;
   while (s + ns <= so + ss ) {

     if( memory == -1 ){
       int pos2 = min(ell+1,ns-2);
       uchar *skip = strstr_sse2( s + pos2 , so+ss - s - pos2 , n + pos2 ,  2);
       if (!skip) return NULL;
       s =  skip - pos2;
     }

     pos = max(ell, memory) + 1;
     fwno = ns - pos;
     fw = strcmp_dir(n + pos ,s + pos, fwno , 1);
     if (fw < fwno ){
       s += fw + 1;
       memory = -1;
     } else {
       bwno = ell - memory;
       bw = strcmp_dir(n + ell, s + ell, bwno, -1);
       if ( bw < bwno ){
         s += per;
         if (peri){
           memory = ns - per - 1;
         }
       } else {
         return s;
       }
     }
   }
   return NULL;
}


uchar * strstr(uchar *s, uchar *n){
  return strstr_two_way(s,strlen(s),n,strlen(n));
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



