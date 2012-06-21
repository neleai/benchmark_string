
static inline int max(int x,int y){ return x>y ? x : y; }
static inline int min(int x,int y){ return x<y ? x : y; }
#include "../config_test.h"
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
int try_test(int ns2,int ss2,int rnd){int k;
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
	FN_CALL

}
int aligns[100], align_min[100][64], align_min_no[100][64];
int main(int argc,char **argv){ int i,j,k,l;int crun;int resolution;
  garg=argv;
  r_seed=42;
	char *align_type=argv[1];
  int ss2=atoi(argv[2]);
  ns=atoi(argv[3]);

	resolution=get_resolution(ss2);
  runs=get_runs(ss2);
	needle2=malloc(ns+2*align_to+1);
	haystack2=malloc(20*ss2+2*align_to+1);
  init_gen();
  init_tester();
	align_offset=0;
	crun=runs/(ss2>10 ? ss2 : 10)/10;
	if (crun<100) crun=100;
	int maxal=0,max_offset=0;
	for(i=0;i<100;i++){aligns[i]=0; for(j=0;j<64;j++)align_min[i][j]=align_min_no[i][j]=0;}
	if (getenv("DONT_RANDOMIZE_SIZE")){
		if(ss2<=1000 && strcmp(align_type,"rnd_align")){			
				for(i=resolution;i<10*resolution;i++)
					for(j=0;j<64;j++)
						for(k=0;k<16;k++){
							align_offset=j;
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
		for(i=resolution;i<10*resolution;i++)
			for(k=0;k<crun;k++){
				align_offset=aligns[i]; 
				if(!strcmp(align_type,"rnd_align")) align_offset=rand_r(&r_seed)%64;
				try_test(ns,ss2*i/resolution,r_seed);
			}
	
	} else {
		if(ss2<=1000){
			for(k=0;k<1024*10*resolution;k++){
				int cmin;
				i=rand_r(&r_seed)%(9*resolution)+resolution;
				j=rand_r(&r_seed)%64;
				align_offset=j;
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
			i=rand_r(&r_seed)%(9*resolution)+resolution;
			align_offset=aligns[i];
			if(!strcmp(align_type,"rnd_align")) align_offset=rand_r(&r_seed)%64;
			try_test(ns,ss2*i/resolution,r_seed);
		}
	}
	fini_tester();
}
