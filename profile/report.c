#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <sys/file.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/mman.h>
#include <stdint.h>
#include "layout.h"

#include "utils.h"
#include "variants.h"

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

char strcatbuf[1000];
char *strcat2(char *a,char *b){
  strcpy(strcatbuf,a);
  strcat(strcatbuf,b);
  return strcatbuf;
}

result_s results[100]; int result_no;
void report_fn(prof_str *smp,char *fname,int flags,binary_names *binaries){int i, j, choice;
    #define SPRINTF(...) buf+=sprintf(buf,__VA_ARGS__)
    char    *buf   = malloc(50000);
		uint64_t calls = smp->success+smp->fail+1;
    results[result_no].text  = buf; 
    results[result_no].calls = calls;
    result_no++; 
 
    #define GNUPLOT_SET "echo ' reset\n set terminal png\n set xlabel \"%s\"\n set ylabel \"number of calls\""
    #define PRINT_LOOP(exp,file,start,idx)  \
                          for(choice=0;choice<strlen_no;choice++){\
                          SPRINTF("echo '");\
                          for(j=start;j<100;j++) SPRINTF("%f %f\n",idx,exp); \
                          SPRINTF("'> %s_%i\n",file,choice);\
                          }\
                          SPRINTF( GNUPLOT_SET "\n plot",flags & B_BYTEWISE_SIZE ? "bytes" : "blocks");\
                          for(choice=0;choice<strlen_no;choice++){\
                            SPRINTF(" \"%s_%i\" with lines linecolor rgb \"%s\" title \"%s\",",file,choice,strlen_color[choice],strlen_names[choice]);\
                          }\
                          SPRINTF(" 0 notitle'| gnuplot > %s.png\n",file);\
                          SPRINTF("echo '<img src=%s.png></img>'\n" ,file);
    

    SPRINTF("\necho '<h1> %s </h1>'\n",fname);
    SPRINTF("echo '<br>number of calls<br>'\n");
    PRINT_LOOP((float)smp->cnt[choice][0][j/10],strcat2(fname,"_1"  ),5,(j-5)/10.0);
    PRINT_LOOP((float)smp->cnt[choice][0][j]   ,strcat2(fname,"_10" ),0,j*1.0);
    PRINT_LOOP((float)smp->cnt[choice][1][j]   ,strcat2(fname,"_100"),0,j*10.0);

    SPRINTF("echo '<br> Calls using at most 16 bytes: %.2f%% <br>'\n",100*(smp->less16+0.0)/calls);


		SPRINTF("echo '<br>Estimated time spent<br>'\n");
    PRINT_LOOP((smp->cnt[choice][0][j/10]<50 ? 0.0 : smp->time[choice][0][j/10]/(smp->cnt[choice][0][j/10]+0.1)*(smp->cnt[0][0][j/10]+smp->cnt[1][0][j/10]+smp->cnt[2][0][j/10]+smp->cnt[3][0][j/10])),strcat2(fname,"_1s"  ),5,(j-5)/10.0);
    PRINT_LOOP((smp->cnt[choice][0][j]<50 ? 0.0 : smp->time[choice][0][j]/(smp->cnt[choice][0][j]+0.1)*(smp->cnt[0][0][j]+smp->cnt[1][0][j]+smp->cnt[2][0][j]+smp->cnt[3][0][j])),strcat2(fname,"_10s"  ),0,j*1.0);
    PRINT_LOOP((smp->cnt[choice][1][j]<50 ? 0.0 : smp->time[choice][1][j]/(smp->cnt[choice][1][j]+0.1)*(smp->cnt[0][1][j]+smp->cnt[1][1][j]+smp->cnt[2][1][j]+smp->cnt[3][0][j])),strcat2(fname,"_100s"  ),0,j*10.0);


		SPRINTF("echo '<br>average time<br>'\n");
    PRINT_LOOP((smp->cnt[choice][0][j/10]<50 ? 0.0 : smp->time[choice][0][j/10]/(smp->cnt[choice][0][j/10]+0.1)),strcat2(fname,"_1t"  ),5,(j-5)/10.0);
    PRINT_LOOP((smp->cnt[choice][0][j]<50 ? 0.0 : smp->time[choice][0][j]/(smp->cnt[choice][0][j]+0.1)),strcat2(fname,"_10t"          ),0,j*1.0);
    PRINT_LOOP((smp->cnt[choice][1][j]<50 ? 0.0 : smp->time[choice][1][j]/(smp->cnt[choice][1][j]+0.1)),strcat2(fname,"_100t"         ),0,j*10.0);

    if (flags & B_NEEDLE){
      SPRINTF("echo '<br>number of calls<br>'\n");
      PRINT_LOOP((float)smp->needle[0][j/10],strcat2(fname,"_1n"  ),5,(j-5)/10.0);
      PRINT_LOOP((float)smp->needle[0][j]   ,strcat2(fname,"_10n" ),0,j*1.0);
      PRINT_LOOP((float)smp->needle[1][j]   ,strcat2(fname,"_100n"),0,j*10.0);
    }

    if (flags & B_SHOW_ALIGN){
      SPRINTF("\necho \"");
      for(i=0;i<64;i++) {
        SPRINTF("%i %11lld\n",i,smp->aligns[i]);
      }
      SPRINTF("\"> %s_alignment\n",fname);
      SPRINTF("" GNUPLOT_SET "\n set xtics 8\n plot \"%s_alignment\" with lines, 0 notitle'| gnuplot >  %s_alignment.png\n","alignment",fname,fname);
      SPRINTF("echo '<br> %s <br> <img src=%s_alignment.png></img><br>'\n", flags & B_REL_ALIGN ? "Relative alignment" : "Alingment" ,fname);
      SPRINTF("echo '<br> Calls aligned to 16 bytes: %.2f%% <br>'",100*(smp->aligns[0]+smp->aligns[16]+smp->aligns[32]+smp->aligns[48]+0.0)/calls);
    }

		SPRINTF("\necho \"");
		for(i=0;i<32;i++) {
	 		SPRINTF("%i %11lld\n",i,smp->time_dist[i]);
		}
		SPRINTF("\">%s_time_dist\n",fname);
		SPRINTF("echo '<br> Time spent<br> <img src=%s_time_dist.png></img><br>'\n",fname);
		SPRINTF("" GNUPLOT_SET "\n plot \"%s_time_dist\" with lines, 0 notitle'| gnuplot > %s_time_dist.png\n","log2(cycles)",fname,fname);


		SPRINTF("\necho \"");
		for(i=0;i<32;i++) {
	 		SPRINTF("%i %11lld\n",i,smp->delay[i]);
		}
		SPRINTF("\">%s_delay\n",fname);
		SPRINTF("echo '<br> Delays between calls<br> <img src=%s_delay.png></img><br>'\n",fname);
		SPRINTF("" GNUPLOT_SET "\n plot \"%s_delay\" with lines, 0 notitle'| gnuplot > %s_delay.png\n","log2(cycles)",fname,fname);



		SPRINTF("echo '<br> Total calls: %11lld\n Success probability: %.2f%% <br>'\n",calls,(100*smp->success+0.0)/calls);
    if(smp->extra[0])
    SPRINTF("echo ' User event 0: %.3f%% <br>'\n",(100*smp->extra[0]+0.0)/calls);
    if(smp->extra[1])
    SPRINTF("echo ' User event 1: %.3f%% <br>'\n",(100*smp->extra[1]+0.0)/calls);
    if(smp->extra[2])
    SPRINTF("echo ' User event 2: %.3f%% <br>'\n",(100*smp->extra[2]+0.0)/calls);
    if(smp->extra[3])
    SPRINTF("echo ' User event 3: %.3f%% <br>'\n",(100*smp->extra[3]+0.0)/calls);
    SPRINTF("echo ' Calls per call site: %i <br>'\n",calls/(smp->call_sites+1));

    SPRINTF("echo 'Most frequently used in: <br><table border=\'1\'>'\n");
    qsort((void*) binaries,TOP_FUNCTIONS,sizeof(binary_names),(__compar_fn_t) binary_namescmp);
    for(i=0;i<TOP_FUNCTIONS;i++){ SPRINTF("echo '<tr><td> %i%%:</td><td> %s </td></tr>'\n",(100*binaries[i].calls+calls/2)/calls,binaries[i].name);}
    SPRINTF("echo '</table>\n'");

}

int main(){ int i,j;
  printf("echo 'See <a href=doc/properties.html>this</a> for description'\n");

  FILE *fi = fopen(FNAME,"r+");
  result_no=0;
	prof_str * smp;
	void *sm= mmap(NULL,sizeof(disk_layout)+sizeof(disk_layout2),PROT_READ|PROT_WRITE,MAP_SHARED,fileno(fi),0);
  if (sm){

    disk_layout2 *lay2=sm+sizeof(disk_layout);
		disk_layout *lay=sm;
		#undef FN
    #define FN(fn) report_fn(&(lay->fn),#fn,b_##fn,lay2->fn);

  #include "functions.h"
  qsort(results,result_no,sizeof(result_s),(__compar_fn_t) resultcmp);
  for(i=0;i<result_no;i++) printf("%s\n",results[i].text);
  printf("echo '<pre>'\n cat /proc/cpuinfo \n echo '</pre>'");

		munmap(sm,sizeof(disk_layout));
  }
}

