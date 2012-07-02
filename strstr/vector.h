typedef unsigned char uchar;

#ifdef SCALAR
#include "scalar.h"
#else
#ifdef ARITHMETIC
#include "arithmetic.h"
#else
#ifdef SSE2
#include "sse2.h"
#else
#include "ssse3.h"
#endif
#endif
#endif


