#include <stdint.h>
#include <emmintrin.h>
#include <tmmintrin.h>

#define BYTES_AT_ONCE 16
#define MBTYPE __m128i

#define MASKTYPE long
inline MASKTYPE forget_bits(MASKTYPE m,int b)
{
  return (m >>(b))<<(b);
}
inline MASKTYPE forget_high_bits(MASKTYPE m,int b)
{
  return (m <<(8*sizeof(MASKTYPE)-BYTES_AT_ONCE+b))>>(sizeof(MASKTYPE)-BYTES_AT_ONCE+b);
}




const uint64_t ones=0x0101010101010101;
MBTYPE make_mask(unsigned char c,int shift)
{
  return _mm_set_epi64x((((uint64_t)ones) >> (8*shift))*((uint64_t)c),(ones >> (shift>8 ? 8*(shift-8) : 0 ))*((uint64_t)c));
}
MBTYPE byte_at(unsigned char c,int shift)
{
  return _mm_set_epi64x(((uint64_t)c)<<(8*shift),((uint64_t)c)<<(8*(shift-8)));
}
#define LOAD(x) _mm_load_si128((x))
#define LOAD_unaligned(x) _mm_loadu_si128(x)
#define CONCAT(x,y,n) _mm_alignr_epi8(x,y,n)

#define test_eq  _mm_cmpeq_epi8
#define AND  _mm_and_si128
#define OR   _mm_or_si128
#define XOR  _mm_xor_si128
#define shift_down _mm_srli_si128
#define shift_up   _mm_slli_si128
inline long  get_mask(MBTYPE x)
{
  return  _mm_movemask_epi8(x);
}
#define GET_BIT(x,y) (x&(1<<(y)))

#define test_zero(x) test_eq(x,mz)
