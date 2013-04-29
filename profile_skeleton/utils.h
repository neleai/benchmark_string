
void *backtrace2();

char *binary_name(){int i;
  char *x=malloc(48);
  sprintf(x,"/proc/%i/cmdline",getpid());
  FILE *f=fopen(x,"r");
  for(i=0;i<48;i++)x[i]=0;
  fgets(x,48,f);
  x[47]=0;
  return x;
}

static uint64_t  __attribute__((noinline)) rdtsc(void)
{
  uint32_t lo, hi;
  __asm__ __volatile__ (
    "        xorl %%eax,%%eax \n"
    "        cpuid"      // serialize
    ::: "%rax", "%rbx", "%rcx", "%rdx"); 
  /* We cannot use "=A", since this would use %rax on x86_64 and return only the lower 32bits of the TSC */
  __asm__ __volatile__ ("rdtsc" : "=a" (lo), "=d" (hi));
  return (uint64_t)hi << 32 | lo;
}

