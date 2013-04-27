#include <emmintrin.h>
#include <stdint.h>
#include <stdlib.h>
typedef __m128i tp_vector;
typedef uint64_t tp_mask;

#define LOAD(x) _mm_load_si128 ((tp_vector *) (x))
#define LOADU(x) _mm_loadu_si128 ((tp_vector *) (x))
#define STORE(x, y) _mm_store_si128 ((tp_vector *) (x), (y))
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


static char *__memcpy_overlap(char *dest,char *src,size_t n)
{
	size_t i;
	if (dest < src)
  	for (i=0;i < n ;i++)
	  	dest[i]=src[i];
	else
		for (i=n-1;i >=0 ;i--)
      dest[i]=src[i];
	return dest;
}
char *memcpy_libc(char *x,char *y,size_t n);

static char *memcpy_small (char *dest, char *src, size_t no, char *ret);
void *memcpy_new_u(char *dest, char *src, size_t n)
{
	char *from,*mid,*to;
	char *dest2= dest;
	if (__builtin_expect((uint64_t)((src - dest)-n) < 2*n,0)) 
    return __memcpy_overlap(dest,src,n);
/*	if (__builtin_expect(n > 3200,0))
		return memcpy_libc(dest,src,n); */
  if (__builtin_expect(n < 16,0))
    {
			return memcpy_small(dest, src, n, dest2);
    }
    if (n>2048) {
      STOREU(dest, LOADU(src));
			STOREU(dest+16, LOADU(src+16));
			STOREU(dest+32, LOADU(src+32));
			STOREU(dest+48, LOADU(src+48));
      STOREU(dest + n - 16, LOADU(src + n - 16));
      STOREU(dest + n - 32, LOADU(src + n - 32));
      STOREU(dest + n - 48, LOADU(src + n - 48));
      STOREU(dest + n - 64, LOADU(src + n - 64));

      from = ALIGN_DOWN(dest + 64, 64);
      mid  = ALIGN_DOWN(dest + n -1024, 64);
      to   = ALIGN_DOWN(dest + n , 64);
 			src += from - dest;

      while (from != mid)
        {
		  		__builtin_prefetch(src + 1024);
          STORE(from, LOADU(src));
          STORE(from+16, LOADU(src+16));
          STORE(from+32, LOADU(src+32));
          STORE(from+48, LOADU(src+48));
          from += 64;
					src += 64;
        }
	      while (from != to)
        {
          STORE(from, LOADU(src));
          STORE(from+16, LOADU(src+16));
          STORE(from+32, LOADU(src+32));
          STORE(from+48, LOADU(src+48));
          from += 64;
					src += 64;
        }
  		  return dest2;
      }
      STOREU(dest, LOADU(src));
      STOREU(dest + n - 16, LOADU(src + n - 16));
      from = ALIGN_DOWN(dest + 16, 16);
      to   = ALIGN_DOWN(dest + n, 16);
			src += from - dest;
      while (from != to)
        {
          STORE(from, LOADU(src));
          from += 16;
					src += 16;
        }
  		return dest2;
}

static char *memcpy_small (char *dest, char *src, size_t no, char *ret)
{
  if (no & (8 + 16))
    {
      ((uint64_t *) dest)[0] = ((uint64_t *) src)[0];
      ((uint64_t *)(dest + no - 8))[0] = ((uint64_t *)(src + no - 8))[0];
      return ret;
    }
  if (no & 4)
    {
      ((uint32_t *) dest)[0] = ((uint32_t *) src)[0];
      ((uint32_t *)(dest + no - 4))[0] = ((uint32_t *)(src + no - 4))[0];
      return ret;
    }
	if (no )
    dest[0] = src[0];
  if (no & 2)
    {
      ((uint16_t *)(dest + no - 2))[0] = ((uint16_t *)(src + no - 2))[0];
      return ret;
    }
  return ret;
}

