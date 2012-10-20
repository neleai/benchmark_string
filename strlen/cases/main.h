#include <emmintrin.h>
static inline int max(int x,int y){ return x>y ? x : y; }
static inline int min(int x,int y){ return x<y ? x : y; }
int align_offset=0;
int runs;
char *needle2,*haystack2;
void strrev(char *s,int cnt){int i; char tmp;
	for(i=0;2*i<cnt;i++){
		tmp=s[i];
		s[i]=s[cnt-1-i];
		s[cnt-1-i]=tmp;
	}
}
int foos[100000];
int try_test(int ns2,int ss2,int rnd){int i,k;
	ns=ns2;
	ss=ss2;
	cur_seed=r_seed=rnd;
	needle=needle2+align_to-(((long)needle2)%align_to)+align_offset;
	haystack=haystack2+align_to-(((long)needle2)%align_to)+align_offset;
	gen();
  	needle[ns]=0;
	  haystack[ss]=0;
	if (ns<=ss)
		for(k=0;k<ns;k++) haystack[ss-ns+k]=needle[k];

	if(reversed()){
		if(ss>ns){
			strrev(haystack,ss-ns);
			strrev(haystack+ss-ns,ns);
			strrev(needle,ns);
		}
	}
  #ifdef NOCACHE
      for(i=-64;i<ns;i+=64){ 
        _mm_clflush(needle+i);
      }
      for(i=-64;i<ss;i+=64){
        _mm_clflush(haystack+i);
      }
  #else
    // We have dirty data on caches, prefetch for clean state.
    for(i=0;i<1024;i++) foos[64*i]++;

    for(i=0;i<ss;i+=64){
        _mm_prefetch(haystack+i ,_MM_HINT_T0);
      }
  #endif
  #ifdef NO_ICACHE
    forget_icache(rand_r(&r_seed)%2048);
    forget_icache(rand_r(&r_seed)%2048);
    forget_icache(rand_r(&r_seed)%2048);
    forget_icache(rand_r(&r_seed)%2048);
  #endif
	FN_CALL

}
int resolution;
int aligns[200], align_min[200][64], align_min_no[200][64];
#define ALIGN_TO(x) align_offset=(x)+(64)*(rand_r(&r_seed)%(align_to/64))
int main(int argc,char **argv){ int i,j,k,l;int crun;
  garg=argv;
  r_seed=42;
	char *align_type=argv[1];
  int ss2=atoi(argv[2]);
  ns=atoi(argv[3]);

	resolution=get_resolution(ss2);
  runs=get_runs(ss2);
	needle2=malloc(ns+2*align_to+512);
	haystack2=malloc(20*ss2+2*align_to+512);
  init_gen();
  init_tester();
	align_offset=0;
	crun=runs/(ss2>10 ? ss2 : 10)/10;
	if (crun<100) crun=100;
	int maxal=0,max_offset=0;
	for(i=0;i<200;i++){aligns[i]=0; for(j=0;j<64;j++){align_min[i][j]=0;align_min_no[i][j]=1;}}
  if(ss2<=1000){
    for(k=0;k<1024*10*resolution;k++){
      int cmin;
      i=rand_r(&r_seed)%(10*resolution)+resolution;
      j=rand_r(&r_seed)%64;
      ALIGN_TO(j);
      try_test(ns,ss2*i/resolution,r_seed);
      data_no--;
      align_min[i][j]+=	data[data_no].time,align_min[i][j];
      align_min_no[i][j]+=1;
    }
    for(i=resolution;i<10*resolution;i++){
      int cmax=align_min[i][0]/align_min_no[i][0];
      for(j=0;j<64;j++){
        align_min[i][j]=align_min[i][j]/align_min_no[i][j];
        if (!strcmp(align_type,"pes_align") && align_min[i][j]>cmax
            ||!strcmp(align_type,"opt_align") && align_min[i][j]<cmax){
          cmax=align_min[i][j];
          aligns[i]=j;
        }
      }
    }
  }

  for(j=0;j<10*resolution*crun;j++){
    i=((unsigned int) rand_r(&r_seed))%(10*resolution)+resolution;
    ALIGN_TO(aligns[i]);
    if(!strcmp(align_type,"rnd_align")) ALIGN_TO(rand_r(&r_seed)%64);
    try_test(ns,ss2*i/resolution,r_seed);
  }

fini_tester();
}
