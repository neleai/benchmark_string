#include <stdlib.h>
#include <string.h>

inline int max(int x,int y){ return x>y ? x : y; }
/* Computing of the maximal suffix */
int maxSuf(char *ne, int m, int *p,int ord) {
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
 

int periodic(char *a,char *b,int siz){int i;
  for(i=0;i<siz;i++) 
    if (a[i]!=b[i]) return 0;
  return 1;
}


char *TW(char *ne, int ns, char *s, int ss) {
   int i, j, ell, memory, p, per, q;

   /* Preprocessing */
   i = maxSuf(ne, ns, &p , 0);
   j = maxSuf(ne, ns, &q , 1);
   
   ell = (i > j) ? i : j;
   per = (i > j) ? p : q;
  
   /* Searching */
    int peri= periodic(ne, ne + per, ell + 1);
    j=0;
    memory = -1;
    if (!peri)  per = max(ell + 1, ns - ell - 1) + 1;
    while (ns + j <= ss ) {
      if( peri)
         i = max(ell, memory) + 1;
      else
         i = ell + 1;
      while (i < ns && ne[i] == s[i + j])
        ++i;
      if (i == ns) {
        i = ell; 
        if (peri){
           while (i > memory && ne[i] == s[i + j])
             --i;
           if (i <= memory)
               return s+j;
           memory = ns - per - 1;
        }else {
            while (i >= 0 && ne[i] == s[i + j])
               --i;
            if (i < 0)
               return s+j;
        }
        j += per;
      } else {
        j += (i - ell);
        memory = -1;
      }         
    }
    return NULL;
}

char *strstr2(char *s,char *n){
  if( strlen(s)<strlen(n)) return NULL;
  return TW(n,strlen(n),s,strlen(s));
}
