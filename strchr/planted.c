#include "tests.h"
#include <string.h>
int plant_r[1000],plant_n[1000];
int plant[1<<20],plant_no;
void init_gen(){int i,j;
      FILE *f=fopen(garg[3],"r");
      plant_no=1<<20;
      int sum=0;
      int no;
      for (no=0; fscanf(f,"%i %i",plant_r+no,plant_n+no)!=EOF; no++)
        {
          sum+=1000*plant_r[no]/(plant_n[no] ? plant_n[no] : 1);
        }
      int avail=0;
      for (i=0; i<no; i++)
        {
          int ratio=plant_no/sum*(1000*plant_r[i]/(plant_n[i] ? plant_n[i] : 1));
          if (avail+ratio>=plant_no) break;
          for (j=0; j<ratio; j++) plant[avail+j]=plant_n[i];
          avail+=ratio;
        }
      for(j=avail; j<plant_no; j++) plant[j]=0;


}
void gen()
{
  int i,j,k;
  for(k=0;k<ns;k++) needle[k]=rand()%128+1;

  j=0;
  char next=0;
  while(j<ss)
    {
      int r=rand_r(&r_seed)&((1<<20)-1);
      if (!plant[r])
        {
          haystack[j]=rand_r(&r_seed)%128+1;
          if (haystack[j]!=needle[0] && haystack[j]!=next)
            {
              next=0;
              j++;
            }
        }
      else
        {
          if (next!=needle[0] )
            {
              for(i=0; i<plant[r]; i++) haystack[j+i]=needle[i];
              next=needle[plant[r]];
              j+=plant[r];
            }
        }
    }
}

#include "main.h"
