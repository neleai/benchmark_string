#include "profile.h"
char *strcpy2(char *x,const char *y,int end){
  r_seed=r_seed+1;
  unsigned int choice=(r_seed)%strcpy_no;
  char* (*fn)(char *,char *) = strcpy_func[choice];
	START_MEASURE(strcpy);
	char * p=fn(x,y);
	size_t r= p-x;
  COMMON_MEASURE(strcpy);
  return end ? p : x;
}
char *strcpy(char *dest,const char *src){	return strcpy2(dest,src,0); }
char *stpcpy(char *dest,const char *src){	return strcpy2(dest,src,1); }

