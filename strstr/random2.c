char *(*strstr2)(char *a,char *b);
#define TEST_FN strstr2
#define TEST_FN_S "strstr2"
#include "../tester.h"
#include <string.h>
int ns,ss;
char *strstr3(char *a,char *b){
  bench_start();
  char *r=strstr2(a,b);
  bench_end(r ? r-a+ns : ss);
  return r;
}
int main(int argc,char **argv){ int i,j,k;
  int ss2=atoi(argv[1]);
  ns=atoi(argv[2]);
  char *needle=malloc(ns+1);
  char *haystack=malloc(10*ss2+1);

  init_tester();
  for(i=1;i<10;i++){
    for(j=0;j<1000;j++){
      ss=ss2*i;
      for(k=0;k<ns;k++) needle[k]=rand()%128+1;
      needle[ns]=0;
      for(k=0;k<ss;k++) haystack[k]=rand()%128+1;
      haystack[ss]=0;
      
      strstr3(haystack,needle);
    }
  }
  fini_tester();
}
