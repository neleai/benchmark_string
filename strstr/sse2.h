#include <stdint.h>
#include <emmintrin.h>
#include <stdlib.h>

typedef __m128i tp_vector;
typedef long tp_mask;
#define SI static inline
#define BYTES_AT_ONCE sizeof(tp_vector)
#define PARA (BYTES_AT_ONCE*unroll)
#define VSIZ_BYTE sizeof(tp_vector)
#define VSIZ_BIT  (VSIZ_BYTE*8)
#define MSIZ_BYTE sizeof(tp_mask)
#define MSIZ_BIT  (MSIZ_BYTE*8)

#define CACHE_LINE_SIZE 64
#define PREFETCH(x)	_mm_prefetch(((char *)x),_MM_HINT_T0);
#define ALIGN(x,u)         s_offset=((size_t) x)%((u)*BYTES_AT_ONCE);           s2=((uchar *)x)-s_offset;

SI tp_mask get_mask(tp_vector x){  return  _mm_movemask_epi8(x); }

SI tp_mask first_bit(tp_mask t){ return __builtin_ctzl(t);}
SI tp_mask  last_bit(tp_mask t){ return __builtin_clzl(t);}

SI tp_mask forget_first_bit(tp_mask t){return t&(t-1);}

SI tp_mask get_bit(tp_mask x,int y){return (x&(((tp_mask)1)<<(y)));}
SI tp_mask shift_down(tp_mask x,int y){ return x>>y;}
SI tp_mask shift_up  (tp_mask x,int y){ return x<<y;}
SI tp_mask forget_low_bits(tp_mask m,int b)
{
	if (b>=MSIZ_BIT) return 0;
  return shift_up(shift_down(m,b),b);
}
SI tp_mask forget_high_bits(tp_mask m,int b)
{
	if (b>=MSIZ_BIT) return 0;
  b=MSIZ_BIT-b;
  return shift_down(shift_up(m,b),b);
}





SI tp_vector BYTE_AT(uchar c,int shift)
{
  return _mm_set_epi64x(((uint64_t)c)<<(8*shift),((uint64_t)c)<<(8*(shift-8)));
}

#define TEST_EQ  _mm_cmpeq_epi8
#define TEST_ZERO(x) TEST_EQ(x,vzero)
#define AND  _mm_and_si128
#define ANDNOT(x,y) _mm_andnot_si128(y,x)
#define OR   _mm_or_si128
#define XOR  _mm_xor_si128
#define SHIFT_DOWN _mm_srli_si128
#define SHIFT_UP   _mm_slli_si128
#define CONCAT(x,y,n) (n==0) ? (y) : ((n==BYTES_AT_ONCE) ? (x) : OR(SHIFT_UP(x,BYTES_AT_ONCE-(n)),SHIFT_DOWN(y,(n))))
SI tp_vector BROADCAST(uchar c)
{
  return _mm_set1_epi8(c);
}

SI tp_vector BROADCAST_ZERO(){
	tp_vector m;
	m=XOR(m,m);
  return m;
}
#define find_zeros(x) get_mask(TEST_EQ(x,vzero))


SI tp_vector TEST_RANGE(tp_vector v,uchar from,uchar to){
	tp_vector fv=BROADCAST(-127-from);
	v=_mm_add_epi8(v,fv);
	tp_vector tv=BROADCAST(-127+to-from+1);
	return _mm_cmplt_epi8(v,tv);
}
#ifdef CASE_INSENSITIVE
SI tp_vector LOAD(tp_vector* x){tp_mask mask;
	tp_vector high_bit=BROADCAST(128);
	tp_vector m=_mm_load_si128(x);
  tp_vector l= AND(TEST_RANGE(m,'A','Z'),high_bit);
	m=OR(m,_mm_srli_epi64(l,2));
	if (mask=get_mask(m)){int i;
    enum_bits_start(mask,i)
			((uchar*)&m)[i]=tolower(((uchar*)&m)[i]);
    enum_bits_end
	}
	return m;
}
#else
#define LOAD(x) _mm_load_si128((tp_vector*)(x))
#define LOAD_UNALIGNED(x) _mm_loadu_si128(x)
#endif

