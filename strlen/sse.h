#include <stdint.h>
#include <stdlib.h>

#include <emmintrin.h>
#ifdef USE_SSSE3
  #define _HAS_SSSE3(x,y) x
  #include <tmmintrin.h>
#else
  #define _HAS_SSSE3(x,y) y
#endif
#ifdef USE_SSE4_1
  #define _HAS_SSE4_1(x,y) x
  #undef  _HAS_SSSE3
  #define _HAS_SSSE3( x,y) x
  #include <smmintrin.h>
#else
  #define _HAS_SSE4_1(x,y) y
#endif

typedef __m128i tp_vector;
typedef unsigned long tp_mask;
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

SI tp_mask get_mask(tp_vector x){  return  (tp_mask)((unsigned int)_mm_movemask_epi8(x)); }
SI unsigned int NONZERO_MASK(tp_vector x){ return _HAS_SSE4_1(!_mm_testz_si128(x,x),get_mask(x));         }

SI tp_mask first_bit(tp_mask t,int y){ return __builtin_ctzl(t);}

SI tp_mask bit_i(int i){            return ((tp_mask) 1)<<i;}
SI tp_mask shift_down(tp_mask x,int y){ return x>>y;}
SI tp_mask shift_up  (tp_mask x,int y){ return x<<y;}

SI tp_mask forget_first_bit(tp_mask t,int i){return t&(t-1);}
SI tp_mask forget_before(tp_mask x,int y){return x&((y>=PARA) ? 0 : ((y<0) ? x : shift_up(  (tp_mask)-1,y)));}
SI tp_mask forget_after( tp_mask x,int y){return x&((y>=PARA) ? x : ((y<0) ? 0 : shift_down((tp_mask)-1,63-y)));}
SI tp_mask get_bit(tp_mask x,int y){return x&bit_i(y);      }




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

#define CONCAT(x,y,n) ((n==0) ? (y) : ((n==BYTES_AT_ONCE) ? (x) : _HAS_SSSE3( _mm_alignr_epi8(x,y,n),\
                                                                              OR(SHIFT_UP(x,BYTES_AT_ONCE-(n)),SHIFT_DOWN(y,(n))))))

SI tp_vector BROADCAST(uchar c)
{
  return _mm_set1_epi8(c);
}

SI tp_vector BROADCAST_ZERO(void){
	tp_vector m;
	m=XOR(m,m);
  return m;
}

SI tp_vector TEST_RANGE(tp_vector v,uchar from,uchar to){
	tp_vector fv=BROADCAST(-127-from);
	v=_mm_add_epi8(v,fv);
	tp_vector tv=BROADCAST(-127+to-from+1);
	return _mm_cmplt_epi8(v,tv);
}

SI tp_vector parallel_tolower(tp_vector m){tp_mask mask; /*TODO sse4 insert*/
	tp_vector high_bit=BROADCAST(128);
  tp_vector l= AND(TEST_RANGE(m,'A','Z'),high_bit);
	m=OR(m,_mm_srli_epi64(l,2));
	if ((mask=get_mask(m))){int i;
    while(mask){ i=first_bit(mask,i); mask=forget_first_bit(mask,i);
			((uchar*)&m)[i]=tolower(((uchar*)&m)[i]);
    }
	}
	return m;
}

#define LOAD(x) _mm_load_si128((tp_vector*)(x))
#define LOAD_UNALIGNED(x) _mm_loadu_si128(x)

#define unroll 4
#define DO_ACTION ACTION(0) ACTION(1) ACTION(2) ACTION(3)
#define AGREGATE_MASK   (mask0|(mask1<<16))|((mask2|(mask3<<16))<<32)
#define AGREGATE_VECTOR OR(OR(mvec0,mvec1),OR(mvec2,mvec3))

