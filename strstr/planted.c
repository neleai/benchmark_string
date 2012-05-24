int r_seed;
char * strstr2(char *a,char *b);
#define TEST_FN strstr2
#include "../tester.h"
#include <string.h>
int ns,ss;
char *strstr3(char *a,char *b){
  bench_start();
  char *r=strstr2(a,b);
  bench_end(r ? r-a+strlen(b) : strlen(a));

  return r;
}
int plant_r[1000],plant_n[1000];
int plant[1<<20],plant_no;
void planted(char *haystack,int haystack_len,char *needle)
{
  int i,j;
  j=0;
  char next=0;
  while(j<haystack_len)
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


int main(int argc,char **argv){ int i,j,k;
  int ss2=atoi(argv[1]);
  FILE *f=fopen(argv[2],"r");
  ns=atoi(argv[3]);
 
  char *needle=malloc(ns+1);
  char *haystack=malloc(20*ss2+1);


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


  init_tester();
  for(i=2;i<=20;i++){
    for(j=0;j<100;j++){
      ss=ss2*i/2;
      for(k=0;k<ns;k++) needle[k]=rand()%128+1;
      needle[ns]=0;
      planted(haystack,ss,needle);
      haystack[ss]=0;
      if (ns<=ss)
        for(k=0;k<ss;k++) haystack[ss-ns+k]=needle[k];
      strstr3(haystack,needle);
    }
  }
  fini_tester();
}
