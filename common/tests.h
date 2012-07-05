int resolution;
#include "../config_test.h"
#include "tester.h"
#ifndef CHECK_TEST
#define CHECK_TEST 0
#endif
int reversed();
char *needle,*haystack;
char **garg;
int ns,ss; unsigned int cur_seed;
unsigned int r_seed;

char *strstr2(char *a,char *c);
char *strstr3(char *a,char *b){

  bench_start();
  char *r=strstr2(a,ss,b,ns);
  bench_end(ss);
  if (CHECK_TEST) {
    fprintf(stderr,"invalid match. Call try_test(%i,%i,%i) to reproduce.\n",ns,ss,cur_seed); 
    exit(42);
  }
  return r;
}
#define strstr strstr3

#define FN_CALL strstr(haystack,needle);
