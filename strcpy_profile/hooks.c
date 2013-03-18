#include "profile.h"
char *strcpy2(char *x,const char *y,int end){
  r_seed=r_seed+1;
  unsigned int choice=(r_seed)%function_no;
  char* (*fn)(char *,const char *) = function_func[choice];
	START_MEASURE(function);
	char * p=fn(x,y);
	size_t r= p-x;
  COMMON_MEASURE(function);

	int i;
	for (i=0;y[i];i++) {
		if (x[i]!=y[i]) { printf("disagree\n%s\n%s\n",x,y); abort(); }
	}
	if (x[i]) {printf("nonull\n"); abort(); }

  return end ? p : x;
}
char *strcpy(char *dest,const char *src){	return strcpy2(dest,src,0); }
char *stpcpy(char *dest,const char *src){	return strcpy2(dest,src,1); }

