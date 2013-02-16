#include "profile.h"

size_t strlen(const char *x){
	r_seed++;
	int choice= r_seed%function_no;
//  int choice=rand_r(&r_seed)%function_no;
  size_t (*fn)(char *) = function_func[choice];
	START_MEASURE(function);
	size_t r=fn(x);
  COMMON_MEASURE(function);
  return r;
}

