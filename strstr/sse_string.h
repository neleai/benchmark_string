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

#define UNROLL 4

#ifdef USE_AVX
#define USE_SSSE3
#endif


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

typedef unsigned char uchar;
typedef __m128i tp_vector;
typedef unsigned long tp_mask;


static inline tp_vector BROADCAST(uchar c)
{
  return _mm_set1_epi8(c);
}
static inline tp_vector LOAD(uchar* x)
{
  return  _mm_load_si128( (tp_vector*)(x));
}
static inline tp_vector LOAD_UNALIGNED(uchar* x)
{
  return  _mm_loadu_si128((tp_vector*)(x));
}

#define PREFETCH(x)	_mm_prefetch(((char *)x),_MM_HINT_T0);

static inline tp_mask get_mask(tp_vector x)
{
  return  (tp_mask)(_mm_movemask_epi8(x));
}

static inline tp_mask get_inv_mask(tp_vector x)
{
  return  (tp_mask)(_mm_movemask_epi8(x))^((1<<16)-1);
}



static inline unsigned int NONZERO_MASK(tp_vector x)
{
  return _HAS_SSE4_1(!_mm_testz_si128(x,x),
                     get_mask(x));
}

#ifdef USE_SSE2_NO_BSF
static char first_bit_hash[]= {0,37,50,8,0,21,0,0,38,54,5,51,9,0,30,0,22,12,1,0,0,0,0,39,0,55,0,35,6,52,28,10,0,0,33,31,0,0,23,0,13,44,0,2,0,0,25,0,0,0,0,0,40,15,0,0,56,62,46,0,19,36,7,0,0,53,4,0,29,11,0,0,0,0,34,0,27,32,0,0,0,43,0,0,24,0,0,14,0,61,45,18,0,0,3,0,0,0,0,26,0,42,0,0,0,60,17,0,0,0,0,41,0,59,16,0,0,58,0,57,0,63,47,48,0,0,49,20};
static inline tp_mask first_bit(tp_mask x)
{
  /* ones has form 2**(tz+1)-1 where tb is number of trailing zereos.*/
  tp_mask ones=x^(x-1);
  /* Calculate perfect hash.*/
  return first_bit_hash[(903385529620038207L*ones)>>57];
}
#else
static inline tp_mask first_bit(tp_mask x)
{
  return __builtin_ctzl(x);
}
#endif
static  char first_bit_short_ary[]= {[0]=16,[1]=0,[2]=1,[4]=2,[8]=3,[16]=4,[32]=5,[64]=6,[128]=7,[256]=8,[512]=9,[1024]=10,[2048]=11,[4096]=12,[8192]=13,[16384]=14,[32768]=15 };
static inline tp_mask first_bit_short(tp_mask x){
  return first_bit_short_ary[x&(-x)];
}
static inline tp_mask forget_first_bit(tp_mask x){ return x&(x-1); }
MASK_OP(forget_before   , x&((y>=UNROLL*UCHARS_IN_VECTOR) ? 0 : ((y<0) ? x :\
                              (~((tp_mask)0))<<y)))
MASK_OP(forget_after    , x&((y>=UNROLL*UCHARS_IN_VECTOR) ? x : ((y<0) ? 0 :\
                              (~(tp_mask)0)>>(63-y))))


BIN_OP(TEST_EQ,_mm_cmpeq_epi8( x,y))
#define TEST_ZERO(x) TEST_EQ(x,BROADCAST(0))
BIN_OP(AND   ,_mm_and_si128(   x,y))
BIN_OP(OR    ,_mm_or_si128(    x,y))
BIN_OP(ANDNOT,_mm_andnot_si128(y,x))
BIN_OP(XOR   ,_mm_xor_si128(   x,y))
BIN_OP(ADD   ,_mm_add_epi8(    x,y))
BIN_OP(SUB   ,_mm_sub_epi8(    x,y))
#define HAS_PARALLEL_MIN
BIN_OP(MINI   ,_mm_min_epu8(   x,y))
BIN_OP(MAXI   ,_mm_max_epu8(   x,y))

#define SHIFT_DOWN _mm_srli_si128
#define SHIFT_UP   _mm_slli_si128

#define CONCAT(x,y,n) ((n==0) ? (y) : ((n==UCHARS_IN_VECTOR) ? (x) : \
                       _HAS_SSSE3( _mm_alignr_epi8(x,y,n),\
                       OR(SHIFT_UP(x,UCHARS_IN_VECTOR-(n)),SHIFT_DOWN(y,(n))))))




static inline tp_vector TEST_RANGE(tp_vector x,tp_vector y,tp_vector z)
{
  /* For unsigned byte we can test x<=y<=z by single comparison y-x< z-x+1. 
     A signed byte comparison can be reduced to unsigned one by 
     substracting 128 from both sides.*/
  tp_vector fv=ADD(BROADCAST(128),x);
  tp_vector v=SUB(y,fv);
  tp_vector tv=SUB(ADD(z,BROADCAST(1)),fv);
  return _mm_cmplt_epi8(v,tv);
}

static inline tp_vector TEST_RANGE_C(tp_vector v,uchar from,uchar to)
{
  /* If gcc did constant folding on sse we could just use
     TEST_RANGE(BROADCAST('A'),v,BROADCAST('Z'));.*/
  tp_vector fv=BROADCAST(-128-from);
  v=ADD(v,fv);
  tp_vector tv=BROADCAST(-128+to-from+1);
  return _mm_cmplt_epi8(v,tv);
}

#include "parallel_tolower.h"
static inline tp_vector parallel_tolower(tp_vector m)
{
  int i;
  tp_vector high_bit=BROADCAST(128);
  tp_vector l= AND(TEST_RANGE_C(m,'A','Z'),high_bit);
  m=OR(m,_mm_srli_epi64(l,2));
  if (get_mask(m))
    for(i=0; i<UCHARS_IN_VECTOR; i++)
      {
        ((uchar*)&m)[i]=tolower_fixed[((uchar*)&m)[i]];
      }
  return m;
}

static uchar last[]={64,63,62,61,60,59,58,57,56,55,54,53,52,51,50,49,48,47,46,45,44,43,42,41,40,39,38,37,36,35,34,33,32,31,30,29,28,27,26,25,24,23,22,21,20,19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1};

static inline tp_mask first_bit_vectors(tp_vector a0,tp_vector a1,tp_vector a2,tp_vector a3){
  a0=AND(a0,LOAD(last+0*UCHARS_IN_VECTOR));
  a1=AND(a1,LOAD(last+1*UCHARS_IN_VECTOR));
  a2=AND(a2,LOAD(last+2*UCHARS_IN_VECTOR));
  a3=AND(a3,LOAD(last+3*UCHARS_IN_VECTOR));
  tp_vector a = MAXI(MAXI(a0,a1),MAXI(a2,a3));
  a = MAXI(a,SHIFT_DOWN(a,8));
  a = MAXI(a,SHIFT_DOWN(a,4));
  a = MAXI(a,SHIFT_DOWN(a,2));
  a = MAXI(a,SHIFT_DOWN(a,1));
  tp_mask m =(tp_mask) ( _mm_cvtsi128_si64(a));
  return 64-m;
}



#if UNROLL==4
/*Has one dependency less than mask0|(mask1<<16)|(mask2<<32)|(mask3<<48)*/
#define get_ZERO(x) get_mask(TEST_ZERO(x))
#define MASK_MVECS   SHORT(get_mask(mvec0),\
                          (get_mask(mvec0)|(get_mask(mvec1)<<16))|((get_mask(mvec2)|(get_mask(mvec3)<<16))<<32))
#define MASK_ZVECS   _DETECT_ZERO_BYTE(SHORT(get_ZERO(sn0),\
                                            (get_ZERO(sn0)  |(get_ZERO(sn1)<<16))  |((get_ZERO(sn2)  |(get_ZERO(sn3)<<16))<<32)),0)



#define NONZERO_MVECS get_mask(OR(OR(mvec0,mvec1),OR(mvec2,mvec3)))
#define NONZERO_ZVECS _DETECT_ZERO_BYTE(get_mask(TEST_ZERO(MINI(MINI(sn0,sn1),MINI(sn2,sn3)))),0)



#define ENUM_PATTERN_LOOP \
  while(mask){ p=s2+FIRST_BIT(mask);\
  LOOP_BODY(p)\
  mask=forget_first_bit(mask);\
  }

#define ENUM_PATTERN_BITS SHORT({ENUM_PATTERN_LOOP;} ,goto epilog;)
#define EPILOG_END        SHORT(epilog_end_short,epilog_end)

#define FIRST_BIT SHORT(first_bit_short,first_bit)

#define MASK_LOOP_FIRST(offset,endp) \
  mask = MASK_MVECS;\
  zmask= MASK_ZVECS;\
  if ( forget_before(mask|zmask,offset || endp)){\
      mask =forget_before(mask,offset);\
      zmask=forget_before(mask,offset);\
      if (zmask) {\
        p=s2+FIRST_BIT(zmask);\
        if (!endp || endp>p) endp = p;\
      }\
      if(endp) goto EPILOG_END;\
      if(mask){ \
        ENUM_PATTERN_BITS;\
      }\
  }
#define MASK_LOOP(endp) \
  if (NONZERO_ZVECS || endp){\
    mask =MASK_MVECS;\
    zmask=MASK_ZVECS;\
    if (zmask) {\
        p=s2+FIRST_BIT(zmask);\
        if (!endp || endp>p) endp = p;\
    }\
    goto EPILOG_END;\
  }\
  if(NONZERO_MVECS){\
    mask=MASK_MVECS;\
    ENUM_PATTERN_BITS;\
  }


#define MASK_EPILOG \
  ENUM_PATTERN_LOOP \
  goto start;
#define MASK_EPILOG_END \
  mask=forget_after(mask,endp-s2);\
  ENUM_PATTERN_LOOP \
  LOOP_END(endp);\


#endif
