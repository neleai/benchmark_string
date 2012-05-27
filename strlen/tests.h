#include "../tester.h"
char *needle,*haystack;
char **garg;
int ns,ss; int cur_seed;
int r_seed;
size_t strlen2(char *a);
size_t strlen3(char *a){
  bench_start();
  size_t r=strlen2(a);
  bench_end(r);
  if (*(a+r)) {
    fprintf(stderr,"invalid match ns=%i,ss=%i,r_seed=%i\n",ns,ss,cur_seed); 
    exit(42);
  }
  return r;
}
#define strlen strlen3

#define FN_CALL strlen(haystack);
