typedef unsigned char uchar;

#ifdef SCALAR
#include "scalar.h"
#else
#ifdef USE_ARITHMETIC
#include "arit.h"
#else
#include "sse.h"
#endif
#endif

SI int min(int x,int y){return x<y ? x : y;}
