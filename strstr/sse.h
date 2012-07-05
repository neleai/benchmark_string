/* Copyright (C) 2012 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License asize_t with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */


#include <stdint.h>

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


SI tp_vector BROADCAST(uchar c)
{
  return _mm_set1_epi8(c);
}
SI tp_vector LOAD(uchar* x)
{
  return  _mm_load_si128( (tp_vector*)(x));
}
SI tp_vector LOAD_UNALIGNED(uchar* x)
{
  return  _mm_loadu_si128((tp_vector*)(x));
}

#define PREFETCH(x)	_mm_prefetch(((char *)x),_MM_HINT_T0);

SI tp_mask get_mask(tp_vector x)
{
  /*gcc unnecesary adds sign extension instructions for pkmovmskb.*/
  return  (tp_mask)((unsigned int)
                    _mm_movemask_epi8(x));
}
SI unsigned int NONZERO_MASK(tp_vector x)
{
  return _HAS_SSE4_1(!_mm_testz_si128(x,x),
                     get_mask(x));
}

#ifdef USE_SSE2_NO_BSF
static char first_bit_hash[]= {0,37,50,8,0,21,0,0,38,54,5,51,9,0,30,0,22,12,1,0,0,0,0,39,0,55,0,35,6,52,28,10,0,0,33,31,0,0,23,0,13,44,0,2,0,0,25,0,0,0,0,0,40,15,0,0,56,62,46,0,19,36,7,0,0,53,4,0,29,11,0,0,0,0,34,0,27,32,0,0,0,43,0,0,24,0,0,14,0,61,45,18,0,0,3,0,0,0,0,26,0,42,0,0,0,60,17,0,0,0,0,41,0,59,16,0,0,58,0,57,0,63,47,48,0,0,49,20};
SI tp_mask first_bit(tp_mask x,int y)
{
  /* ones has form 2**(tz+1)-1 where tb is number of trailing zereos.*/
  tp_mask ones=x^(x-1);
  /* Calculate perfect hash.*/
  return first_bit_hash[(903385529620038207L*ones)>>57];
}
#else
SI tp_mask first_bit(tp_mask x,int y)
{
  return __builtin_ctzl(x);
}
#endif
SI tp_mask bit_i(int i)
{
  return ((tp_mask) 1)<<i;
}

MASK_OP(get_bit         , x&bit_i(y))
MASK_OP(shift_down      , x>>y )
MASK_OP(shift_up        , x<<y )
MASK_OP(forget_first_bit, x&(x-1))
MASK_OP(forget_before   , x&((y>=PARA) ? 0 : ((y<0) ? x :\
                             shift_up(  (tp_mask)-1,y))))
MASK_OP(forget_after    , x&((y>=PARA) ? x : ((y<0) ? 0 :\
                             shift_down((tp_mask)-1,63-y))))


BIN_OP(TEST_EQ,_mm_cmpeq_epi8( x,y))
#define TEST_ZERO(x) TEST_EQ(x,vzero)
BIN_OP(AND   ,_mm_and_si128(   x,y))
BIN_OP(OR    ,_mm_or_si128(    x,y))
BIN_OP(ANDNOT,_mm_andnot_si128(y,x))
BIN_OP(XOR   ,_mm_xor_si128(   x,y))
BIN_OP(ADD   ,_mm_add_epi8(    x,y))
BIN_OP(SUB   ,_mm_sub_epi8(    x,y))
#define HAS_PARALLEL_MIN
BIN_OP(MINI   ,_mm_min_epu8(    x,y))

#define SHIFT_DOWN _mm_srli_si128
#define SHIFT_UP   _mm_slli_si128

#define CONCAT(x,y,n) ((n==0) ? (y) : ((n==BYTES_AT_ONCE) ? (x) : \
                       _HAS_SSSE3( _mm_alignr_epi8(x,y,n),\
                       OR(SHIFT_UP(x,BYTES_AT_ONCE-(n)),SHIFT_DOWN(y,(n))))))




SI tp_vector TEST_RANGE(tp_vector x,tp_vector y,tp_vector z)
{
  /*We use signed comparison.*/
  tp_vector fv=ADD(BROADCAST(128),x);
  tp_vector v=SUB(y,fv);
  tp_vector tv=SUB(ADD(z,BROADCAST(1)),fv);
  return _mm_cmplt_epi8(v,tv);
}

SI tp_vector TEST_RANGE_C(tp_vector v,uchar from,uchar to)
{
  /* If gcc did constant folding on sse we could just use
     TEST_RANGE(BROADCAST('A'),v,BROADCAST('Z'));.*/
  tp_vector fv=BROADCAST(-128-from);
  v=_mm_add_epi8(v,fv);
  tp_vector tv=BROADCAST(-128+to-from+1);
  return _mm_cmplt_epi8(v,tv);
}

SI tp_vector parallel_tolower(tp_vector m)
{
  int i;
  tp_vector high_bit=BROADCAST(128);
  tp_vector l= AND(TEST_RANGE_C(m,'A','Z'),high_bit);
  m=OR(m,_mm_srli_epi64(l,2));
  if (get_mask(m))
    for(i=0; i<BYTES_AT_ONCE; i++)
      {
        ((uchar*)&m)[i]=tolower_fixed[((uchar*)&m)[i]];
      }
  return m;
}



#if unroll==1
#define AGREGATE_MASK    mask0
#elif unroll==2
#define AGREGATE_MASK   (mask0|(mask1<<16))
#elif unroll==4
/*Has one dependency less than mask0|(mask1<<16)|(mask2<<32)|(mask3<<48)*/
#define AGREGATE_MASK   (mask0|(mask1<<16))|((mask2|(mask3<<16))<<32)
#endif
