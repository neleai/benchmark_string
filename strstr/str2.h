#include <stdlib.h>
typedef unsigned char uchar;
#define CHAR(x) *(x)

static inline int max(int x,int y){ return x>y ? x : y; }
static inline int min(int x,int y){ return x<y ? x : y; }

/* Two way algorithm: CROCHEMORE M., PERRIN D., 1991, Two-way string-matching, Journal of the ACM 38(3):651-675.
   Implementation based from http://www-igm.univ-mlv.fr/~lecroq/string/node26.html
*/

static size_t strcmp_dir(const uchar *a,const uchar *b,size_t no,int dir){
  int i;
  for(i=0;i<no && CHAR(a)==CHAR(b);i++){a+=dir;b+=dir;}
  return i;
}

static int periodic(uchar *a,uchar *b,int siz){int i;
  return strcmp_dir(a,b,siz,1)==siz;
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

uchar *strstr_medium( uchar *s,int ss,uchar *n,int ns){
  /* placeholder */
  return strchr(s,n[0]);
}

/* Two Way string matching algorithm. */
uchar * strstr_two_way(uchar *s, int ss, uchar *n, int ns) {
   int i, ell, memory, p, per, q,peri,pos;
   int fw,fwno,bw,bwno,skip;
   uchar *so = s;
   two_way_preprocessing(n,ns,&per,&ell,&peri);

   
   /* Searching */
   memory = -1;
   while (s <= so + ss - ns) {
     pos = max(ell, memory) + 1;
     fwno = ns -1 - pos;

     char *skip = strstr_medium( s + pos , so+ss - s - pos , n + pos , min(ns-pos, 2));
     if (!skip) return NULL;
     int adv = skip - (s + pos);
     if (adv) {
       s += adv;
       memory= -1;
     }

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
}


uchar * strstr(uchar *s, uchar *n){
  return strstr_two_way(s,strlen(s),n,strlen(n));
}


