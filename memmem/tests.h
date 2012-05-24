#include "../tester.h"
char *needle,*haystack;
char **garg;
int ns,ss; int cur_seed;
int r_seed;
char *memmem2(char *a,int n,char *c,int s);
char *memmem3(char *a,char *b){
  bench_start();
  char *r=memmem2(a,ss,b,ns);
  bench_end(r ? r-a+strlen(b) : strlen(a));
  if (r && strncmp(r,b,strlen(b))) {
    fprintf(stderr,"invalid match ns=%i,ss=%i,r_seed=%i\n",ns,ss,cur_seed); 
    exit(42);
  }
  return r;
}
#define memmem memmem3

#define FN_CALL memmem(haystack,needle);
