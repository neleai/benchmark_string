// grey //
const int small_treshold= 128;
#define AS_STRSTR
#include "str2.h"
int reversed(){return 1;}
uchar *strstr2(uchar *s,uchar *n){return strstr_two_way(s,strlen(s),n,strlen(n));}
