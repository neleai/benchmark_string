#include <tmmintrin.h>
#include "sse2.h"
#undef CONCAT

#define CONCAT(x,y,n) ((n==0) ? (y) : ((n==BYTES_AT_ONCE) ? (x) : _mm_alignr_epi8(x,y,n)))
