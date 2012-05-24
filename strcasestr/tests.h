#include "../tester.h"
char *needle,*haystack;
char **garg;
int ns,ss; int cur_seed;
int r_seed;
char *strcasestr2(char *a,char *c);
char *strcasestr3(char *a,char *b){
  bench_start();
  char *r=strcasestr2(a,b);
  bench_end(r ? r-a+strlen(b) : strlen(a));
  if (r && strncasecmp(r,b,strlen(b))) {
    fprintf(stderr,"invalid match ns=%i,ss=%i,r_seed=%i\n",ns,ss,cur_seed); 
    exit(42);
  }
  return r;
}
#define strcasestr strcasestr3

#define FN_CALL strcasestr(haystack,needle);
