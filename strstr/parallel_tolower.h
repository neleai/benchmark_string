#include <stdlib.h>
#include <ctype.h>
/*TODO this tables should be recalculated when locale changes.*/
static uchar _tolower_class[512];
static uchar *tolower_class[256];
static uchar tolower_class_no[256];
static uchar tolower_fixed[256];
static int calc_tolower_class=0;
static inline void calc_tolower_cls(void)
{
  int i,j;
  uchar *p=_tolower_class;
  /* as POSIX tolower has undefined behaviour on nonupper characters
     we construct table with defined behaviour.*/
  /* second reason is that tolower call is slow because compiler spills all used xmm registers*/
  for (i=0; i<256; i++) tolower_fixed[i] = isupper(i) ? tolower(i) : i;
  /* calculate equivalence classes*/
  for (i=0; i<256; i++)
    {
      for(j=0; j<i; j++) if(tolower_fixed[i]==tolower_fixed[j])
          {
            tolower_class_no[i]=tolower_class_no[j];
            tolower_class[i]=tolower_class[j];
            goto skip;
          }
      tolower_class[i]   =p;
      tolower_class_no[i]=0;
      for(j=i; j<256; j++)
        {
          if(tolower_fixed[i]==tolower_fixed[j])
            {
              tolower_class_no[i]++;
              *p++=j;
            }
        }
      *p++=0;
skip:
      ;
    }
  calc_tolower_class=1;
}

#define TOLOWER(x) tolower_fixed[x]
/*TODO recalculate when locale changes. */
static inline void TOLOWER_INIT(void){ if(!calc_tolower_class) calc_tolower_cls(); }
static inline int TOLOWER_CASE_CHECK(uchar u){ return (tolower_class_no[u]==1 || (tolower_class_no[u]==2 && (tolower_class[u][0]^tolower_class[u][1])==32)); }
