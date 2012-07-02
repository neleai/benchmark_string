typedef unsigned char uchar;
typedef long size_t;
static inline int max(int x,int y){ return x>y ? x : y; }
static inline int min(int x,int y){ return x<y ? x : y; }

#define CHAR(x) *x
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






/* Two Way string matching algorithm. */
char * TW(char *x, int m, char *y, int n) {
   int i, j, ell, memory, p, per, q; int peri;

   two_way_preprocessing(x,m,&per,&ell,&peri);

   /* Searching */
   if (peri) {
      j = 0;
      memory = -1;
      while (j <= n - m) {
         i = max(ell, memory) + 1;
         while (i < m && x[i] == y[i + j])
            ++i;
         if (i >= m) {
            i = ell;
            while (i > memory && x[i] == y[i + j])
               --i;
            if (i <= memory)
               return y+j;
            j += per;
            memory = m - per - 1;
         }
         else {
            j += (i - ell);
            memory = -1;
         }
      }
   }
   else {
      per = max(ell + 1, m - ell - 1) + 1;
      j = 0;
      while (j <= n - m) {
         i = ell + 1;
         while (i < m && x[i] == y[i + j])
            ++i;
         if (i >= m) {
            i = ell;
            while (i >= 0 && x[i] == y[i + j])
               --i;
            if (i < 0)
               return y+j;
            j += per;
         }
         else
            j += (i - ell);
      }
   }
}
char *strstr(char *s,char *n){
  return TW(n,strlen(n),s,strlen(s));
}


int maxSuf(char *x, int m, int *p) {
   int ms, j, k;
   char a, b;

   ms = -1;
   j = 0;
   k = *p = 1;
   while (j + k < m) {
      a = x[j + k];
      b = x[ms + k];
      if (a < b) {
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
 
/* Computing of the maximal suffix for >= */
int maxSufTilde(char *x, int m, int *p) {
   int ms, j, k;
   char a, b;

   ms = -1;
   j = 0;
   k = *p = 1;
   while (j + k < m) {
      a = x[j + k];
      b = x[ms + k];
      if (a > b) {
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
         else { /* a < b */
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
  u=maxSuf(n,ns,&up);
  v=maxSufTilde(n,ns,&vp);
  ell = (u > v) ? u :  v;
  per = (u > v) ? up : vp;
  *peri = periodic(n, n + per, ell + 1);
  if (!*peri)
    per = max(ell + 1, ns - ell - 1) + 1;
  *per2=per;
  *ell2=ell;
}



