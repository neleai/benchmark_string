// grey //
const int small_treshold= 128;
#define AS_STRSTR
#define STRSTR strstr_test
#include "strstr.h"
int reversed(){return 1;}
uchar *strstr2(uchar *s,uchar *n){return strstr_two_way(s,strlen(s),n,strlen(n));}
