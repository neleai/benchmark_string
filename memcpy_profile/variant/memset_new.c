#include <emmintrin.h>
#include <stdint.h>
#include <stdlib.h>
typedef __m128i tp_vector;
typedef uint64_t tp_mask;

#define LOAD(x) _mm_load_si128 ((tp_vector *) (x))
#define LOADU(x) _mm_loadu_si128 ((tp_vector *) (x))
#define STORE(x, y) _mm_store_si128 ((tp_vector *) (x), (y))
#define STORENT(x, y) _mm_stream_si128 ((tp_vector *) (x), (y))

#define STOREU(x, y) _mm_storeu_si128 ((tp_vector *) (x), (y))
#define CONCAT(x, y, n) _mm_alignr_epi8 (y , x ,n)
#define MIN _mm_min_epu8
#define EQ  _mm_cmpeq_epi8
#define OR  _mm_or_si128

#define BROADCAST(x) _mm_set1_epi8 (x)
#define get_mask(x) ((uint64_t) _mm_movemask_epi8 (x))

/* Align VALUE down by ALIGN bytes.  */
#define ALIGN_DOWN(value, align) \
       ALIGN_DOWN_M1(value, align - 1)
/* Align VALUE down by ALIGN_M1 + 1 bytes.
   Useful if you have precomputed ALIGN - 1.  */
#define ALIGN_DOWN_M1(value, align_m1) \
       (void *)((uintptr_t)(value) \
                & ~(uintptr_t)(align_m1))

/* Align VALUE up by ALIGN bytes.  */
#define ALIGN_UP(value, align) \
       ALIGN_UP_M1(value, align - 1)
/* Align VALUE up by ALIGN_M1 + 1 bytes.
   Useful if you have precomputed ALIGN - 1.  */
#define ALIGN_UP_M1(value, align_m1) \
       (void *)(((uintptr_t)(value) + (uintptr_t)(align_m1)) \
                & ~(uintptr_t)(align_m1))


static char *memset_small (char *dest, uint64_t c, size_t no, char *ret);
void *memset_new(char *dest, int _c, size_t n)
{
  int i; 
	char *dest2 = dest;
  unsigned char c = _c;
  tp_vector vc = BROADCAST(c);
	uint64_t mc = *(uint64_t*)(&vc);
  if (n < 16)
    {
      return memset_small(dest, mc, n, dest);
    }
  else
    {
      STOREU(dest, vc);
      STOREU(dest + n - 16, vc);
      char *to   = ALIGN_DOWN(dest + n, 16);
      dest = ALIGN_DOWN(dest + 16, 16);
			/* TODO simplify test? */
      while (dest != to)
        {
          STORE(dest,vc);
          dest += 16;
        }
    }
  return dest2;
}
static char *memset_small (char *dest, uint64_t c, size_t no, char *ret)
{
  if (no & (8))
    {
      ((uint64_t *) dest)[0] = c;
      ((uint64_t *)(dest + no - 8))[0] = c;
      return ret;
    }
  if (no & 4)
    {
      ((uint32_t *) dest)[0] = c;
      ((uint32_t *)(dest + no - 4))[0] = c;
      return ret;
    }
  if (no & 1)
    {
      dest[0] = c;
    }
  if (no & 2)
    {
      ((uint16_t *)(dest + no - 2))[0] = c;
    }
  return ret;
}
/*
void __bzero_new (char *dest, size_t n)
{
	memset_new(dest, 0, n);
}

char *memset_tail (char *dest, int c, size_t n, char *ret){
	memset (dest, c, n);
	return ret;
}

*/
