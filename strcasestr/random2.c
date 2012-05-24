#include "tests.h"
#include <string.h>
int main(int argc,char **argv){ int i,j,k;
  r_seed=42;
  int ss2=atoi(argv[1]);
  ns=atoi(argv[2]);
  char *needle=malloc(ns+1);
  char *haystack=malloc(20*ss2+1);

  init_tester();
  for(i=2;i<=20;i++){
    for(j=0;j<100;j++){
      ss=ss2*i/2;
      cur_seed=r_seed;
      for(k=0;k<ns;k++) needle[k]=rand_r(&r_seed)%128+1;
      needle[ns]=0;
      for(k=0;k<ss;k++) haystack[k]=rand_r(&r_seed)%128+1;
      haystack[ss]=0;
      FN_CALL
    }
  }
  fini_tester();
}
