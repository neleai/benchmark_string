int main(int argc,char **argv){ int i,j,k;
  garg=argv;
  r_seed=42;
  int ss2=atoi(argv[1]);
  ns=atoi(argv[2]);

  int runs=10000;
  if (getenv("RUNS")) runs=atoi(getenv("RUNS"));

  needle=malloc(ns+1);
  haystack=malloc(20*ss2+1);
  init_gen();
  init_tester();
  for(i=2;i<=20;i++){
    ss=ss2*i/2; 
    int crun=runs/(ss>10 ? ss : 10);
    if (crun<100) crun=100;
    for(j=0;j<crun;j++){
      cur_seed=r_seed;
      gen();
      needle[ns]=0;
      haystack[ss]=0;
      if (ns<=ss)
        for(k=0;k<ss;k++) haystack[ss-ns+k]=needle[k];
      FN_CALL
    }
  }
  fini_tester();
}
