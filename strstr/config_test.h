const int align_to=4096;
int get_resolution(int ss2){int resolution;//Split interval (ss2,10 ss2) into pieces of size ss2/resolution.
	if(ss2==1     ) resolution=1;
	if(ss2==10    ) resolution=10;
	if(ss2==100   ) resolution=10;
	if(ss2==1000  ) resolution=4;
	if(ss2==10000 ) resolution=2;
	if(ss2==100000) resolution=1;
	return resolution;
}
int get_runs(int ss2){int runs;//for each size we call function 'runs' times.
	if(ss2==1     ) runs=100000;
	if(ss2==10    ) runs=10000;
	if(ss2==100   ) runs=1000;
	if(ss2==1000  ) runs=100;
	if(ss2==10000 ) runs=100;
	if(ss2==100000) runs=100;
	return runs;
}
#define CHECK_TEST ((expected &&  r == NULL) || (expected &&( !r||strncmp(r,needle,strlen(needle)))))
