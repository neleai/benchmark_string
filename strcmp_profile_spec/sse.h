#include <emmintrin.h>
#include <stdint.h>
#include <stdlib.h>
typedef __m128i tp_vector;
#ifdef CHAR_BASED
typedef unsigned char uchar;
typedef uchar tp_scalar;
#define S(x) _mm_##x##_epi8
#else
typedef int tp_scalar;
#define S(x) _mm_##x##_epi32
#endif
typedef uint64_t tp_mask;
#define LOAD(x) _mm_load_si128((tp_vector *) (x))
#define LOADU(x) _mm_loadu_si128((tp_vector *) (x))
#define STOREU(x,y) _mm_storeu_si128((tp_vector *) (x), (y))
#define STORE(x,y) _mm_store_si128((tp_vector *) (x), (y))

#define MIN _mm_min_epu8
#define EQ S(cmpeq)
#define OR _mm_or_si128
#define shift_down(x,y) (x)>>(y)
#define shift_up(x,y)   (x)<<(y)

#define PARA sizeof(tp_vector)/sizeof(tp_scalar)
#define BROADCAST(x) S(set1)(x)
#define get_mask(x) ((long)_mm_movemask_epi8(x))
static inline tp_mask first_bit(tp_mask x)
{
  return __builtin_ctzl(x)/sizeof(tp_scalar);
}

static inline uint64_t find64(tp_scalar e,void *s2){
  tp_vector pe= BROADCAST(e);
  tp_vector v0,v1,v2,v3;
  v0=EQ(pe,LOAD(s2));
  v1=EQ(pe,LOAD(s2+PARA));
  v2=EQ(pe,LOAD(s2+2*PARA));
  v3=EQ(pe,LOAD(s2+3*PARA));
  return get_mask(v0)|(get_mask(v1)<<16)|(get_mask(v2)<<32)|(get_mask(v3)<<48);
}

