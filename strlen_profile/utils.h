/* libc backtrace requires to load libgcc which is impossible to do in rtld.*/
void* backtrace2(){
register void *ebp __asm__ ("ebp");
  void **ptr=ebp;
  if(!ptr) return NULL;
  ptr=*ptr;
  if(!ptr) return NULL;
  return ptr[1];
}

char *binary_name(){int i;
  char *x=malloc(48);
  sprintf(x,"/proc/%i/cmdline",getpid());
  FILE *f=fopen(x,"r");
  for(i=0;i<48;i++)x[i]=0;
  fgets(x,48,f);
  x[47]=0;
  return x;
}


static __inline__ uint64_t rdtsc(void)
{
  uint32_t lo, hi;
/*  __asm__ __volatile__ (
    "        xorl %%eax,%%eax \n"
    "        cpuid"      // serialize
    ::: "%rax", "%rbx", "%rcx", "%rdx");*/
  /* We cannot use "=A", since this would use %rax on x86_64 and return only the lower 32bits of the TSC */
  __asm__ __volatile__ ("rdtsc" : "=a" (lo), "=d" (hi));
  return (uint64_t)hi << 32 | lo;
}

