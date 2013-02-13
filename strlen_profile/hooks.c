#include "profile.h"
size_t strlen(const char *x){
	r_seed=r_seed*11+7;
	int choice= (r_seed>>8)%strlen_no;
//  int choice=rand_r(&r_seed)%strlen_no;
  size_t (*fn)(char *) = strlen_func[choice];
	START_MEASURE(strlen);
	size_t r=fn(x);
  COMMON_MEASURE(strlen);
  return r;
}
