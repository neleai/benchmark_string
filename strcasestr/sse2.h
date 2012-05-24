#include <stdint.h>
#include <emmintrin.h>
#define BYTES_AT_ONCE 16
#define MBTYPE __m128i

#define MASKTYPE long
inline MASKTYPE forget_bits(MASKTYPE m,int b)
{
  return (m >>(b))<<(b);
}


MBTYPE parallel_tolower(MBTYPE mask){
  /* if (range(c,'A','Z')) return c|32; else return c;

    
   */
  
  return OR(mask,shift_down(test_range(mask,make_mask(-'a',0),make_mask('z'-'a'+1,0)),2));
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
#define LOAD(x) _mm_load_si128(( long long int * )x)
#define test_eq  _mm_cmpeq_epi8
#define test_range(mask,mask1,mask_dif) _mm_cmplt_epi8(_mm_add_epi8(mask,mask1),mask2)

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
