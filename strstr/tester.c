char *strstr2(char *a,char *b);
#define TEST_FN strstr2
#define TEST_FN_S "strstr2"
#include "../tester.h"
int main(){ int i;
  init_tester();
  for(i=0;i<1000;i++)
    strstr2("aaab","aaaaab");
  fini_tester();
}
