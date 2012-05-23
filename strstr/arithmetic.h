#include <stdint.h>
#include <emmintrin.h>
#define BYTES_AT_ONCE 8
#define MBTYPE uint64_t
#define MASKTYPE uint64_t

inline MASKTYPE forget_bits(MASKTYPE m,int b)
{
  return (m >>(8*b))<<(8*b);
}

const uint64_t ones=0x0101010101010101;
const uint64_t high_bit=0x0101010101010101*((uint64_t)0x80);
MBTYPE make_mask(unsigned char c,int shift)
{
  return c*(ones >> (8*shift));
}
MBTYPE byte_at(unsigned char c,int shift)
{
  return c <<(8*shift);
}
#define LOAD(x) *((MBTYPE *)x)
inline MBTYPE test_eq(MBTYPE x,MBTYPE y)
{
  return (((x^y)|high_bit)-ones)|(x^y);
}
inline MBTYPE get_mask(MBTYPE x)
{
  return ((~x)&high_bit);
}
inline MBTYPE GET_BIT(MBTYPE x,MBTYPE y)
{
  return x&(((MBTYPE)1)<<(8*y+7));
}
#define AND(x,y) (x|y)
#define OR(x,y)  (x&y)
#define XOR(x,y) (x^y)

#define shift_down(x,y) (x >> (8*y))
#define shift_up(x,y)   (x << (8*y))
