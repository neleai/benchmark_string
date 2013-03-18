#define AS_STPCPY

#ifdef AS_STPCPY
# define _STR_STP(x, y) y
#else
# define _STR_STP(x, y) x
#endif


#include <emmintrin.h>
#ifndef UNALIGNED
#include <tmmintrin.h>
#endif
#include <stdint.h>
#include <stdlib.h>
typedef __m128i tp_vector;
typedef uint64_t tp_mask;

#define LOAD(x) _mm_load_si128 ((tp_vector *) (x))
#define LOADU(x) _mm_loadu_si128 ((tp_vector *) (x))
#define STORE(x,y) _mm_store_si128 ((tp_vector *) (x), (y))
#define STOREU(x,y) _mm_storeu_si128 ((tp_vector *) (x), (y))

#define CONCAT(x,y,n) _mm_alignr_epi8(y,x,n)
#define MIN _mm_min_epu8
#define EQ  _mm_cmpeq_epi8
#define OR  _mm_or_si128

#define BROADCAST(x) _mm_set1_epi8 (x)
#define get_mask(x) ((uint64_t) _mm_movemask_epi8 (x))

static inline tp_mask first_bit (tp_mask x)
{
  return __builtin_ctzl (x);
}



static char *memcpy_small (char *dest, char *src, size_t no, char *ret);

#ifdef AS_STPCPY
char *STRCPY (char *dest, char *src)
#else
char *STRCPY (char *dest, char *src)
{
  return strcpy_internal (dest, src, dest);
}

char *strcpy_internal (char *dest, char *src, char *ret)
#endif
{
  char *s, *d;
  tp_vector vz = BROADCAST (0);
  tp_vector v0, v1, v2, v3;
  tp_mask m, m2;
  long i, no, offset;

page_cont:
  ;
	/* Test if reading next 64 bytes cross a page.  */
  if ((((uint64_t) src) & (4096 - 1)) > 4096 - 64)
    {
      offset = ((uint64_t) src) % 64;
      for (i = offset; i < 64; i++)
        {
          dest[i - offset] = src[i - offset];
          if (!src[i - offset]) return _STR_STP (ret, dest + i - offset);
        }
      goto aligned;
    }

  /* Handle strings upto 16 bytes first.  */
  v0 = LOADU (src);
  m = get_mask (EQ (v0, vz));
  if (m)
    {
      no = first_bit (m);
      return memcpy_small (dest, src, no + 1, _STR_STP (ret, dest + no));
    }
  STOREU ( dest, v0);

  /* Handle remaining 48 bytes.  */
  v1 = LOADU (src + 16);
  v2 = LOADU (src + 32);
  v3 = LOADU (src + 48);

  /* Set highest bit as sentinel to do copying in all cases.  */
  m = (get_mask (EQ (v1, vz)) << 16)
       | (get_mask (EQ (v2, vz)) << 32)
       |( (get_mask (EQ (v3, vz)) | (1 << 15)) << 48);

  no = first_bit (m);

  if (no + 1 >= 32)
    STOREU (dest + 16, v1);
  if (no + 1 >= 48)
    STOREU (dest + 32, v2);

  STOREU (dest + no + 1 - 16, LOADU(src + no + 1 - 16));

  if (no != 63 || src[63] == 0)
    {
      return _STR_STP (ret, dest + no);
    }

aligned:
  ;
  /* Align loads to 64 bytes.  */
  offset = ((uint64_t) src) % 64;
  dest = dest + 64 - offset;
  src = src + 64 - offset;
  v0 = LOAD (src + 0);
  v1 = LOAD (src + 16);
  v2 = LOAD (src + 32);
  v3 = LOAD (src + 48);

#ifdef UNALIGNED
  /* We use aligned loads and unaligned stores.
     This is faster than unaligned load and aligned stores because
     test for load crossing page is not neccessary.  */
  while (1)
    {
      /* Test zero byte among 64 bytes and if is then handle it by header.  */
      if (get_mask (EQ (MIN (v0, MIN (v1, MIN (v2, v3))), vz))) goto page_cont;
      STOREU (dest + 0, v0);
      v0 = LOAD (src + 64);
      STOREU (dest + 16, v1);
      v1 = LOAD (src + 16 + 64);
      STOREU (dest + 32, v2);
      v2 = LOAD (src + 32 + 64);
      STOREU (dest + 48, v3);
      v3 = LOAD (src + 48 + 64);
      src += 64;
      dest += 64;
    }
#else

	STOREU (dest, v0);
	switch ((dest-src)%16){
	case 0:
	  while (1)
    {
      /* Test zero byte among 64 bytes and if is then handle it by header.  */
      if ( get_mask (EQ (MIN (v0, MIN (v1, MIN (v2, v3))), vz))) goto page_cont;
      STORE (dest + 0, v0);
      v0 = LOAD (src + 64);
      STORE (dest + 16, v1);
      v1 = LOAD (src + 16 + 64);
      STORE (dest + 32, v2);
      v2 = LOAD (src + 32 + 64);
      STORE (dest + 48, v3);
      v3 = LOAD (src + 48 + 64);
      src += 64;
      dest += 64;
    }
	
		#define UNALIGNED_COPY(align)\
		 case align:\
    while(1){\
      if (get_mask (EQ (MIN (v0, MIN (v1, MIN (v2, v3))), vz))) {goto end_page;}\
			STORE (dest +16- align + 0, CONCAT(v0,v1,16-align));\
      v0 = LOAD (src + 64);\
			STORE (dest +16- align + 16, CONCAT(v1,v2,16-align));\
      v1 = LOAD (src + 16 + 64);\
			STORE (dest +16- align + 32, CONCAT(v2,v3,16-align));\
      v2 = LOAD (src + 32 + 64);\
 			STORE (dest +16- align + 48, CONCAT(v3,v0,16-align));\
	    v3 = LOAD (src + 48 + 64);\
      src += 64;\
      dest += 64;\
    }
		UNALIGNED_COPY(1);
		UNALIGNED_COPY(2);
		UNALIGNED_COPY(3);
		UNALIGNED_COPY(4);
		UNALIGNED_COPY(5);
		UNALIGNED_COPY(6);
		UNALIGNED_COPY(7);
		UNALIGNED_COPY(8);
		UNALIGNED_COPY(9);
		UNALIGNED_COPY(10);
		UNALIGNED_COPY(11);
		UNALIGNED_COPY(12);
		UNALIGNED_COPY(13);
		UNALIGNED_COPY(14);
		UNALIGNED_COPY(15);
	}
#endif
	end_page:;
	while(*src) 
   *dest++ = *src++;
	*dest = 0;
	return  _STR_STP(ret, dest);

}

/* Copies up to 16 bytes and returns ret.  */
/* A viable optimization could be test 1 << no do defer need of first_bit.  */
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
  dest[0] = src[0];
  if (no & 2)
    {
      ((uint16_t *)(dest + no - 2))[0] = ((uint16_t *)(src + no - 2))[0];
      return ret;
    }
  return ret;
}
