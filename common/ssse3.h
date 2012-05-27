#include "sse2.h"
#undef CONCAT

#define CONCAT(x,y,n) _mm_alignr_epi8(x,y,n)
