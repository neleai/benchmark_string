#include "profile.h"
int *strcmp(char *x,const char *y){
  r_seed=r_seed+1;
  unsigned int choice=(r_seed)%function_no;
  char* (*fn)(char *,const char *) = function_func[choice];
	
	size_t r= 0;
	char *x2=x,*y2=y;
	while(*x2==*y2 && *x2){ x2++; y2++; }
	r = x2 - x;
	START_MEASURE(function);
	int p=fn(x,y);
  COMMON_MEASURE(function);
  return p;
}
