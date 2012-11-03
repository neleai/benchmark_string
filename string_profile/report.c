#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <sys/file.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/mman.h>

#include "layout.h"

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


int main(){ int i,j;
  char *fname = "/tmp/libc_profile";
  FILE *fi = fopen(fname,"r+");
	void *sm= mmap(NULL,sizeof(disk_layout),PROT_READ|PROT_WRITE,MAP_SHARED,fileno(fi),0);
  if (sm){
		disk_layout *lay=sm;
#define GNUPLOT_SET "echo ' reset\n set terminal png\n set xlabel \"size\"\n set ylabel \"number of calls\""
		
		#define REPORT(fn) \
		printf("\necho '<h1>" #fn "</h1>'\n");\
		prof_str *smp = &(lay->fn);\
		printf("echo 'number of calls<br>'\n");\
		printf("echo '");\
		for(j=0;j<34;j++) printf("%f %11d\n",j/3.0,smp->cnt[0][j/3]/3);\
		printf("'> " #fn "_1\n " GNUPLOT_SET "\n plot \"" #fn "_1\" with lines'| gnuplot > " #fn "_1.png\n");\
		printf("echo '<img src=" #fn "_1.png></img>'\n echo '");\
		for(j=0;j<34;j++) printf("%i %11d\n",3*j,smp->cnt[1][j]);\
		printf("'> " #fn "_10\n " GNUPLOT_SET "\n plot \"" #fn "_10\" with lines'| gnuplot > " #fn "_10.png\n");\
		printf("echo '<img src=" #fn "_10.png></img>'\n echo '");\
		for(j=0;j<34;j++) printf("%i %11d\n",30*j,smp->cnt[2][j]);\
		printf("'> " #fn "_100\n " GNUPLOT_SET "\n plot \"" #fn "_100\" with lines'| gnuplot > " #fn "_100.png\n");\
		printf("echo '<img src=" #fn "_100.png></img>'\n");\
		printf("echo 'average time<br>'\n");\
		printf("echo '");\
		for(j=0;j<27;j++) printf("%f %11d\n",j/3.0,smp->time[0][j/3]/(smp->cnt[0][j/3]+1));\
		printf("'> " #fn "_1t\n " GNUPLOT_SET "\n set ylabel \"cycles\" \n plot \"" #fn "_1t\" with lines'| gnuplot > " #fn "_1t.png\n");\
		printf("echo '<img src=" #fn "_1t.png></img>'\n echo '");\
		for(j=0;j<30;j++) printf("%i %11d\n",j*3,smp->time[1][j]/(smp->cnt[1][j]+1));\
		printf("'> " #fn "_10t\n " GNUPLOT_SET "\n set ylabel \"cycles\" \n plot \"" #fn "_10t\" with lines'| gnuplot > " #fn "_10t.png\n");\
		printf("echo '<img src=" #fn "_10t.png></img>'\n echo '");\
		for(j=0;j<30;j++) printf("%i %11d\n",30*j,smp->time[2][j]/(smp->cnt[2][j]+1));\
		printf("'> " #fn "_100t\n " GNUPLOT_SET "\n set ylabel \"cycles\" \n plot \"" #fn "_100t\" with lines'| gnuplot > " #fn "_100t.png\n");\
		printf("echo '<img src=" #fn "_100t.png></img>'\n");\
		printf("\necho \"");\
		for(i=0;i<64;i++) {\
	 		printf("%i %11d\n",i,smp->aligns[i]);\
		}\
		printf("\">" #fn "_alignment\n");\
		printf("" GNUPLOT_SET "\n set xtics 8\n set xlabel \"alignment\"\n plot \"" #fn "_alignment\" with lines'| gnuplot > " #fn "_alignment.png\n");\
		printf("echo 'alignment <br> <img src=" #fn "_alignment.png></img><br>'\n");\
		printf("\necho \"");\
		for(i=0;i<32;i++) {\
	 		printf("%i %11d\n",i,smp->delay[i]);\
		}\
		printf("\">" #fn "_delay\n");\
		printf("echo 'delays between calls<br> <img src=" #fn "_delay.png></img><br>'\n");\
		printf("" GNUPLOT_SET "\n set xlabel \"log(size)\" \n  plot \"" #fn "_delay\" with lines'| gnuplot > " #fn "_delay.png\n");\
			printf("echo '<br> success: %11d\n fail:     %11d\n <br>'",smp->success,smp->fail);

		#define NEEDLES \
  printf("\necho 'needle\n<pre>");\
    for(i=1;i<10;i++) printf("%11d",i);printf("\n");\
    for(i=0;i<3;i++) {\
      printf("\n");\
for(j=0;j<9;j++) printf("%11d",smp->needle[i][j]);\
} printf("</pre>'\n");

		{
			REPORT(strlen);
		}
		{
			REPORT(strchr);
		}
		{
			REPORT(strcmp);
		}
		{
			REPORT(strcasecmp);
		}

		{
			REPORT(memchr);
		}
		{
			REPORT(strcat);
		}
		{
			REPORT(strcpy);
		}
		{
			REPORT(memcpy);
		}
		{
			REPORT(strrchr);
		}
		{
			REPORT(strspn);
			NEEDLES
		}


		{
			REPORT(strstr);
			NEEDLES
		}
		{
			REPORT(strdup);
		}




		munmap(sm,sizeof(disk_layout));
  }
}

