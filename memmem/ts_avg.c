
#include "../tester.h"
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
int main()
{
  int i;
  int sum=1;
  for (i=0; i<100000000; i++) sum=sum*sum+3*sum; //cpu scaling affect rdtsc
  long ts_start=rdtsc();
  for (i=0; i<200; i++) sum+=rdtsc();
  long ts_end=rdtsc();
  printf("%lli",sum);
  ts_avg=(ts_end-ts_start)/201.0;
  FILE *f=fopen("ts_avg","w");
  fprintf(f,"%lli",ts_avg);
}
