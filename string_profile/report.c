#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <sys/file.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/mman.h>
#include <stdint.h>
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


typedef struct {
  uint64_t calls;
  char *text;
} result_s;

int resultcmp(result_s *a,result_s *b){
  if(a->calls<b->calls) return 1;
  if(a->calls>b->calls) return -1;
  return 0;
}
int  binary_namescmp(binary_names *a,binary_names *b){
  if(a->calls<b->calls) return 1;
  if(a->calls>b->calls) return -1;
  return 0;
}


int main(){ int i,j;
  char *fname = "/tmp/libc_profile";
  FILE *fi = fopen(fname,"r+");
  result_s results[100]; int result_no=0;
	prof_str * smp;
	void *sm= mmap(NULL,sizeof(disk_layout)+sizeof(disk_layout2),PROT_READ|PROT_WRITE,MAP_SHARED,fileno(fi),0);
  if (sm){

    disk_layout2 *lay2=sm+sizeof(disk_layout);
		disk_layout *lay=sm;
    char *buf;
#define GNUPLOT_SET "echo ' reset\n set terminal png\n set xlabel \"blocks\"\n set ylabel \"number of calls\""
		uint64_t calls;
		#undef FN
    #define FN(fn) \
    buf=results[result_no].text=malloc(10000);\
    calls=lay->fn.success+lay->fn.fail+1;\
    results[result_no].calls=calls;\
  	result_no++;\
	  buf+=sprintf(buf,"\necho '<h1>" #fn "</h1>'\n");\
    smp = &(lay->fn);\
		buf+=sprintf(buf,"echo '<br>number of calls<br>'\n");\
		buf+=sprintf(buf,"echo '");\
		for(j=3;j<30;j++) buf+=sprintf(buf,"%f %11d\n",j/3.0,smp->cnt[0][j/3]);\
		buf+=sprintf(buf,"'> " #fn "_1\n " GNUPLOT_SET "\n plot \"" #fn "_1\" with lines'| gnuplot > " #fn "_1.png\n");\
		buf+=sprintf(buf,"echo '<img src=" #fn "_1.png></img>'\n echo '");\
		for(j=0;j<34;j++) buf+=sprintf(buf,"%i %11d\n",3*j,smp->cnt[1][j]);\
		buf+=sprintf(buf,"'> " #fn "_10\n " GNUPLOT_SET "\n plot \"" #fn "_10\" with lines'| gnuplot > " #fn "_10.png\n");\
		buf+=sprintf(buf,"echo '<img src=" #fn "_10.png></img>'\n echo '");\
		for(j=0;j<34;j++) buf+=sprintf(buf,"%i %11d\n",30*j,smp->cnt[2][j]);\
		buf+=sprintf(buf,"'> " #fn "_100\n " GNUPLOT_SET "\n plot \"" #fn "_100\" with lines'| gnuplot > " #fn "_100.png\n");\
		buf+=sprintf(buf,"echo '<img src=" #fn "_100.png></img>'\n");\
    buf+=sprintf(buf,"echo '<br> Calls using at most 16 bytes: %.2f%% <br>'\n",100*(smp->less16+0.0)/calls);\
    buf+=sprintf(buf,"echo '<br> Calls in first 4 blocks: %.2f%% <br>'\n",100*(smp->cnt[0][1]+smp->cnt[0][2]+smp->cnt[0][3]+smp->cnt[0][4]+0.0)/calls);\
		buf+=sprintf(buf,"echo '<br>average time<br>'\n");\
		buf+=sprintf(buf,"echo '");\
		for(j=3;j<27;j++) buf+=sprintf(buf,"%f %11d\n",j/3.0,smp->time[0][j/3]/(smp->cnt[0][j/3]+1));\
		buf+=sprintf(buf,"'> " #fn "_1t\n " GNUPLOT_SET "\n set ylabel \"cycles\" \n plot \"" #fn "_1t\" with lines'| gnuplot > " #fn "_1t.png\n");\
		buf+=sprintf(buf,"echo '<img src=" #fn "_1t.png></img>'\n echo '");\
		for(j=0;j<30;j++) buf+=sprintf(buf,"%i %11d\n",j*3,smp->time[1][j]/(smp->cnt[1][j]+1));\
		buf+=sprintf(buf,"'> " #fn "_10t\n " GNUPLOT_SET "\n set ylabel \"cycles\" \n plot \"" #fn "_10t\" with lines'| gnuplot > " #fn "_10t.png\n");\
		buf+=sprintf(buf,"echo '<img src=" #fn "_10t.png></img>'\n echo '");\
		for(j=0;j<30;j++) buf+=sprintf(buf,"%i %11d\n",30*j,smp->time[2][j]/(smp->cnt[2][j]+1));\
		buf+=sprintf(buf,"'> " #fn "_100t\n " GNUPLOT_SET "\n set ylabel \"cycles\" \n plot \"" #fn "_100t\" with lines'| gnuplot > " #fn "_100t.png\n");\
		buf+=sprintf(buf,"echo '<img src=" #fn "_100t.png></img>'\n");\
    if(b_##fn & B_NEEDLE) { \
	 	buf+=sprintf(buf,"echo '<br>needle size<br>'\n");\
		buf+=sprintf(buf,"echo '");\
		for(j=0;j<27;j++) buf+=sprintf(buf,"%f %11d\n",j/3.0,smp->needle[0][j]);\
		buf+=sprintf(buf,"'> " #fn "_1n\n " GNUPLOT_SET "\n set ylabel \"bytes\" \n plot \"" #fn "_1n\" with lines'| gnuplot > " #fn "_1n.png\n");\
		buf+=sprintf(buf,"echo '<img src=" #fn "_1n.png></img>'\n echo '");\
		for(j=0;j<30;j++) buf+=sprintf(buf,"%i %11d\n",j*3,smp->needle[1][j]);\
		buf+=sprintf(buf,"'> " #fn "_10n\n " GNUPLOT_SET "\n set ylabel \"bytes\" \n plot \"" #fn "_10n\" with lines'| gnuplot > " #fn "_10n.png\n");\
		buf+=sprintf(buf,"echo '<img src=" #fn "_10n.png></img>'\n echo '");\
		for(j=0;j<30;j++) buf+=sprintf(buf,"%i %11d\n",30*j,smp->needle[2][j]);\
		buf+=sprintf(buf,"'> " #fn "_100n\n " GNUPLOT_SET "\n set ylabel \"bytes\" \n plot \"" #fn "_100n\" with lines'| gnuplot > " #fn "_100n.png\n");\
		buf+=sprintf(buf,"echo '<img src=" #fn "_100n.png></img>'\n");\
    }\
  if (b_##fn & B_SHOW_ALIGN){\
	buf+=sprintf(buf,"\necho \"");\
		for(i=0;i<64;i++) {\
	 		buf+=sprintf(buf,"%i %11d\n",i,smp->aligns[i]);\
		}\
		buf+=sprintf(buf,"\">" #fn "_alignment\n");\
		buf+=sprintf(buf,"" GNUPLOT_SET "\n set xtics 8\n set xlabel \"alignment\"\n plot \"" #fn "_alignment\" with lines'| gnuplot > " #fn "_alignment.png\n");\
		buf+=sprintf(buf,"echo '<br>alignment <br> <img src=" #fn "_alignment.png></img><br>'\n");\
    buf+=sprintf(buf,"echo '<br> Calls aligned to 16 bytes: %.2f%% <br>'",100*(smp->aligns[0]+smp->aligns[16]+smp->aligns[32]+smp->aligns[48]+0.0)/calls);\
    }\
		buf+=sprintf(buf,"\necho \"");\
		for(i=0;i<32;i++) {\
	 		buf+=sprintf(buf,"%i %11d\n",i,smp->delay[i]);\
		}\
		buf+=sprintf(buf,"\">" #fn "_delay\n");\
		buf+=sprintf(buf,"echo '<br>delays between calls<br> <img src=" #fn "_delay.png></img><br>'\n");\
		buf+=sprintf(buf,"" GNUPLOT_SET "\n set xlabel \"log(cycles)\" \n  plot \"" #fn "_delay\" with lines'| gnuplot > " #fn "_delay.png\n");\
			buf+=sprintf(buf,"echo '<br> calls: %11d\n success probability: %.2f%% <br>'\n",calls,(100*smp->success+0.0)/calls);\
    buf+=sprintf(buf,"echo 'most frequently used in: <br><table>'\n");\
    qsort((void*) lay2->fn,TOP_FUNCTIONS,sizeof(binary_names),(__compar_fn_t) binary_namescmp);\
    for(i=0;i<TOP_FUNCTIONS;i++){ buf+=sprintf(buf,"echo '<tr><td> %i%%:</td><td> %s </td></tr>'\n",(100*lay2->fn[i].calls+calls/2)/calls,lay2->fn[i].name);}\
    buf+=sprintf(buf,"echo '</table>\n'");
  #include "functions.h"
  qsort(results,result_no,sizeof(result_s),(__compar_fn_t) resultcmp);
  for(i=0;i<result_no;i++) printf("%s\n",results[i].text);
  printf("echo '<pre>'\n cat /proc/cpuinfo \n echo '</pre>'");

		munmap(sm,sizeof(disk_layout));
  }
}

