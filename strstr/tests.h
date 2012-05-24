#include "../tester.h"
char *needle,*haystack;
char **garg;
int ns,ss; int cur_seed;
int r_seed;
char *strstr2(char *a,char *c);
char *strstr3(char *a,char *b){
  bench_start();
  char *r=strstr2(a,b);
  bench_end(r ? r-a+strlen(b) : strlen(a));
  if (r && strncmp(r,b,strlen(b))) {
    fprintf(stderr,"invalid match ns=%i,ss=%i,r_seed=%i\n",ns,ss,cur_seed); 
    exit(42);
  }
  return r;
}
#define strstr strstr3

#define FN_CALL strstr(haystack,needle);
