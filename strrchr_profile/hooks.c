#include <string.h>
#include <dlfcn.h>
#include "profile.h"
int cnt=42;
void __attribute((constructor)) init(){
//	void *libc_handle=dlopen("libc.so.6",RTLD_NOW);
//	function_func[1]=dlsym(libc_handle,"memset");
}

int counter=0;
char *strrchr(const char *_x,int c){ int i;
	char *x= _x;
  r_seed=r_seed+1;
  unsigned int choice=rand_r(&r_seed)%function_no;
  char* (*fn)(void *,int) = function_func[choice];
	START_MEASURE(function);

	char * p=fn(x,c);

  COMMON_MEASURE(function,strlen(_x));
  return p;
}

