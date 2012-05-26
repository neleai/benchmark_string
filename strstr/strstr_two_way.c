#include <stdlib.h>
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
 



char *TW(char *ne, int m, char *hs, int n) {
   int i, j, ell, memory, p, per, q;

   /* Preprocessing */
   i = maxSuf(ne, m, &p , 0);
   j = maxSuf(ne, m, &q , 1);
   if (i > j) {
      ell = i;
      per = p;
   }
   else {
      ell = j;
      per = q;
   }

   /* Searching */
   if (memcmp(ne, ne + per, ell + 1) == 0) {
      j = 0;
      memory = -1;
      while (j <= n - m) {
         i = max(ell, memory) + 1;
         while (i < m && ne[i] == hs[i + j])
            ++i;
         if (i >= m) {
            i = ell;
            while (i > memory && ne[i] == hs[i + j])
               --i;
            if (i <= memory)
               return hs+j;
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
         while (i < m && ne[i] == hs[i + j])
            ++i;
         if (i >= m) {
            i = ell;
            while (i >= 0 && ne[i] == hs[i + j])
               --i;
            if (i < 0)
               return hs+j;
            j += per;
         }
         else
            j += (i - ell);
      }
   }
  return NULL;
}

char *strstr2(char *s,char *n){
  if (strlen(s)<strlen(n)) return NULL;
  return TW(n,strlen(n),s,strlen(s));
}
