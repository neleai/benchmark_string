#include <stdlib.h>
/* libc backtrace requires to load libgcc which is impossible to do in rtld.*/
 __attribute__((noinline)) void* backtrace2() { 
register void *ebp __asm__ ("ebp");
  void **ptr=ebp;
  if(!ptr) return NULL;
  ptr=*ptr;
  if(!ptr) return NULL;
  return ptr[1];
}
