#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <sys/file.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/mman.h>
#include <stdint.h>
#include <string.h>
#include "layout.h"
#include "utils.h"
#include "variants.h"

void *memcpy_libc(char*x,char *y,int no){
	int i;
	for(i=0;i<no;i++)x[i]=y[i];
	return x;
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

char strcatbuf[10000];
char *strcat2(char *a,char *b){
  strcpy(strcatbuf,a);
  strcat(strcatbuf,b);
  return strdup(strcatbuf);
}

result_s results[100]; int result_no;
void report_fn(prof_str *smp,char *fname,int flags,binary_names *binaries){int i, j, k, choice;
    #define SPRINTF(...) buf+=sprintf(buf,__VA_ARGS__)
    char    *buf   = malloc(1000000);
		uint64_t calls = smp->success+smp->fail+1;
    results[result_no].text  = buf; 
    results[result_no].calls = calls;
    result_no++; 

    SPRINTF("\necho '<h1> %s </h1>'\n",fname);
 
    #define GNUPLOT_SET "echo ' reset\n set terminal png\n set xlabel \"%s\"\n set ylabel \"" YLABEL "\""
    #define PRINT_LOOP(exp,file,start,idx)  \
                          for(choice=0;choice<function_no;choice++){\
                          SPRINTF("echo '");\
                          for(j=start;j<100;j++) SPRINTF("%f %f\n",idx,exp); \
                          SPRINTF("'> %s_%i\n",file,choice);\
                          }\
                          SPRINTF( GNUPLOT_SET "\n plot",desc_type[block_type]);\
                          for(choice=0;choice<function_no;choice++){\
                            SPRINTF(" \"%s_%i\" with lines linecolor rgb \"%s\" title \"%s\",",file,choice,function_color[choice],function_names[choice]);\
                          }\
                          SPRINTF(" 0 notitle'| gnuplot > %s.png\n",file);\
                          SPRINTF("echo '<img src=%s.png></img>'\n" ,file);
   	int block_type;
		profile_array *cnt,*time;
    char *desc_type[2]={"blocks","bytes"}; 
		SPRINTF("echo \"<a href='javascript:showhide(\\\"div%sblocks\\\",\\\"div%sbytes\\\")'> blocks </a> \
                    <a href='javascript:showhide(\\\"div%sbytes\\\",\\\"div%sblocks\\\")'> bytes </a> \
\"\n",fname,fname,fname,fname);
		for(block_type=0;block_type<2;block_type++){

			if(block_type==0){
			 cnt = &(smp->block_cnt);
			 time= &(smp->block_time);
			} 
			if(block_type==1){
			 cnt = &(smp->byte_cnt);
			 time= &(smp->byte_time);
			} 


#define YLABEL "cycles" 

			SPRINTF("echo '<div id=\"div%s%s\" style=\"display:%s\">'\n",fname,desc_type[block_type],((block_type==0&&(flags&B_BYTEWISE_SIZE)) || ((block_type==1&&!(flags&B_BYTEWISE_SIZE)))) ? "block" : "none");/*TODO configurable default*/

			SPRINTF("echo '<h2>Estimated time spent</h2>'\n");

			PRINT_LOOP(((*cnt)[choice][0][j/10]<100 ? 0.0 : (*time)[choice][0][j/10]/((*cnt)[choice][0][j/10]+0.1)*((*cnt)[0][0][j/10]+(*cnt)[1][0][j/10]+(*cnt)[2][0][j/10]+(*cnt)[3][0][j/10])),strcat2(strcat2(fname,desc_type[block_type]),"_1s"  ),5,(j-5)/10.0);
			PRINT_LOOP(((*cnt)[choice][0][j]<100 ? 0.0 : (*time)[choice][0][j]/((*cnt)[choice][0][j]+0.1)*((*cnt)[0][0][j]+(*cnt)[1][0][j]+(*cnt)[2][0][j]+(*cnt)[3][0][j])),strcat2(strcat2(fname,desc_type[block_type]),"_10s"  ),0,j*1.0);
			PRINT_LOOP(((*cnt)[choice][1][j]<100 ? 0.0 : (*time)[choice][1][j]/((*cnt)[choice][1][j]+0.1)*((*cnt)[0][1][j]+(*cnt)[1][1][j]+(*cnt)[2][1][j]+(*cnt)[3][1][j])),strcat2(strcat2(fname,desc_type[block_type]),"_100s"  ),0,j*10.0);

		double total_time[function_no];
		for(choice=0;choice<function_no;choice++){
      total_time[choice]=0;
		  for(j=0;j<100;j++){
				total_time[choice] += (*time)[choice][1][j]/((*cnt)[choice][1][j]+0.1)*((*cnt)[0][1][j]+(*cnt)[1][1][j]+(*cnt)[2][1][j]+(*cnt)[3][1][j]);
      }
		}
		double min_time=total_time[0];
		for(choice=0;choice<function_no;choice++)
			if (min_time > total_time[choice]) min_time = total_time[choice];

		SPRINTF("echo '<br>Time ratio to fastest: <br> ");
		for(choice=0;choice<function_no;choice++)
			SPRINTF("%s: %f%% ",function_names[choice],100*total_time[choice]/min_time);
		SPRINTF("'\n");
			SPRINTF("echo '<h2>average time</h2>'\n");
			PRINT_LOOP(((*cnt)[choice][0][j/10]<100 ? 0.0 : (*time)[choice][0][j/10]/((*cnt)[choice][0][j/10]+0.1)),strcat2(strcat2(fname,desc_type[block_type]),"_1t"  ),5,(j-5)/10.0);
			PRINT_LOOP(((*cnt)[choice][0][j]<100 ? 0.0 : (*time)[choice][0][j]/((*cnt)[choice][0][j]+0.1)),strcat2(strcat2(fname,desc_type[block_type]),"_10t"          ),0,j*1.0);
			PRINT_LOOP(((*cnt)[choice][1][j]<100 ? 0.0 : (*time)[choice][1][j]/((*cnt)[choice][1][j]+0.1)),strcat2(strcat2(fname,desc_type[block_type]),"_100t"         ),0,j*10.0);

#undef YLABEL
#define YLABEL "calls"

	SPRINTF("echo '<h2>Distribution for sizes 16 and 128 </h2>'\n");
	PRINT_LOOP((float)smp->time_distribution[choice][0][j],strcat2(strcat2(fname,desc_type[block_type]),"time16"),0,j*5.0);
	PRINT_LOOP((float)smp->time_distribution[choice][1][j],strcat2(strcat2(fname,desc_type[block_type]),"time400"),0,j*5.0);


			SPRINTF("echo '<h2>number of calls</h2>'\n");

			PRINT_LOOP((float)(*cnt)[choice][0][j/10],strcat2(strcat2(fname,desc_type[block_type]),"_1"  ),5,(j-5)/10.0);
			PRINT_LOOP((float)(*cnt)[choice][0][j]   ,strcat2(strcat2(fname,desc_type[block_type]),"_10" ),0,j*1.0);
			PRINT_LOOP((float)(*cnt)[choice][1][j]   ,strcat2(strcat2(fname,desc_type[block_type]),"_100"),0,j*10.0);
			SPRINTF("echo '<br> Calls using at most 16 bytes: %.2f%% <br>'\n",100*(smp->less16+0.0)/calls);
	
		SPRINTF("echo '</div>'\n");
		}

			SPRINTF("echo '<h2>Alignment</h2>'\n");
			SPRINTF("echo \"<a href='javascript:showhide(\\\"div%salign\\\",\\\"div\\\")'> show </a> <a href='javascript:showhide(\\\"div\\\",\\\"div%salign\\\")'> hide </a>\"\n",fname,fname);
			SPRINTF("echo '<div id=div%salign style=\"display:%s\">'\n" ,fname,(flags&B_SHOW_ALIGN) ? "show" : "hide");
#define PRINT_ALIGN(type,label) \
      SPRINTF("\necho \"");\
      for(i=0;i<64;i++) { \
        SPRINTF("%i %11lld\n",i,smp->type[i]);\
      }\
      SPRINTF("\"> %s" #type "\n",fname);\
      SPRINTF("" GNUPLOT_SET "\n set xtics 8\n plot \"%s" #type "\" with lines, 0 notitle'| gnuplot >  %s" #type ".png\n",label,fname,fname);\
      SPRINTF("echo '<img src=%s" #type ".png></img>'\n", fname);
			if (flags & B_NEEDLE) {
        PRINT_ALIGN(rel_aligns,"relative alignment");
			}
			PRINT_ALIGN(aligns,"haystack alignment");
			if (flags & B_NEEDLE) {
        PRINT_ALIGN(needle_aligns,"needle alignment");
      }

			

      SPRINTF("echo '<br> Calls aligned to 16 bytes: %.2f%% <br>'",100*(smp->aligns[0]+smp->aligns[16]+smp->aligns[32]+smp->aligns[48]+0.0)/calls);
		SPRINTF("\necho '</div>'\n");

		SPRINTF("echo '<h2> Delays between calls</h2>'\n");

		SPRINTF("\necho \"");
		for(i=0;i<32;i++) {
	 		SPRINTF("%i %11lld\n",i,smp->delay[i]);
		}
		SPRINTF("\">%s_delay\n",fname);

		SPRINTF("echo '<img src=%s_delay.png></img><br>'\n",fname);
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

	printf("echo \" <script language=javascript type='text/javascript'> function showhide(show,hide) { if(document.getElementById(show)) document.getElementById(show).style.display='block'; if(document.getElementById(hide))	document.getElementById(hide).style.display='none'; } </script>\"\n");


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

