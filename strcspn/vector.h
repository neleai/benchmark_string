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


/* vectorized functions for string matching. They operate many(4,8,16,32) unsigned bytes at once, allowed operations are
  TEST_ZERO(x)      - set highest bit of bytes that were zero to 1 and 0 otherwise,rest is unspecified.
  TEST_EQ(x,y)      - set highest bit of bytes that are equal to 1 and 0 otherwise,rest is unspecified.
  BROADCAST(c)      - return vector such that all bytes have value c
  AND,OR,XOR,ANDNOT - do logic operation bytewise
  SHIFT_UP(x,k), SHIFT_DOWN(x,k) shift vector x k bytes up/down
  CONCAT(xlow,xhigh,k) concatenate xlow,xhigh and return bytes from k-th.
  In shifts and concatenation k must be constant.
  A implementation may support function
  TEST_RANGE(x,y,z) - set highest bit of bytes that xi <= yi <= zi to 1 and 0 otherwise,rest is unspecified
  MINI(x,y)         - calculate bytewise minimum fo x,y
  To support other vector extension see sysdeps/x86_64/sse.h file.
*/
/*
  Resulting vectors are turned into implementation specific mask by function get_mask, such that value highest bit of i-th uchar of vector v 
   is equal to get_mask(v)&bit_i(i). 
  Multiple masks mask0,mask1... can be concatenated by platform specific macro AGREGATE_MASK into single mask.
  For mask m an first and last i such that m&get_bit(i) is nonzero can be obtained by calling 

  first_bit(m,hint)  where hint is promise that first_bit(m)>hint. 
  forget_first_bit(m,hint) zeroes first_bit(m,hint)-th bit of m.
  forget_before(m,i)       zeroes bits bit_i(j) for j<i.
  forget_after( m,i)       zeroes bits bit_i(j) for j>i. 

By defining macro WIDE_VERSION you can use same operations that work at 32-bit integers instead of bytes. 
*/

#define UCHARS_IN_VECTOR (sizeof(tp_vector)/sizeof(uchar))

#define CACHE_LINE_SIZE 64
#define UN_OP(n,e) static inline tp_vector n(tp_vector x){ return e;}
#define BIN_OP(n,e) static inline tp_vector n(tp_vector x,tp_vector y){ return e;}
#define MASK_OP(name,exp) static inline tp_mask name(tp_mask x,int y){ return exp; }
#if defined( USE_AVX2)
 #ifdef WIDE_VERSION
    #include "avx2_wide.h"
  #else
    #include "avx2.h"
  #endif
#elif defined( USE_SSE2) | defined(USE_SSE2_NO_BSF) | defined(USE_SSSE3) | defined(USE_SSE4_1) | defined(USE_AVX)
  #ifdef WIDE_VERSION
    #include "sse_wide.h"
  #else
    #include "sse.h"
  #endif
#else
 #ifdef WIDE_VERSION
  #include "arit_wide.h"
 #else
  #include "arit.h"
 #endif
#endif
#undef UN_OP
#undef BIN_OP
#undef MASK_OP

#if UNROLL==1
#define DO_ACTION ACTION(0)
#define AGREGATE_VECTOR  mvec0
#elif UNROLL==2
#define DO_ACTION ACTION(0) ACTION(1)
#define  AGREGATE_VECTOR    OR(mvec0,mvec1)
#elif UNROLL==4
#define DO_ACTION ACTION(0) ACTION(1) ACTION(2) ACTION(3)
#define AGREGATE_VECTOR OR(OR(mvec0,mvec1),OR(mvec2,mvec3))
#endif

static inline size_t min(size_t x,size_t y)
{
  return x<y ? x : y;
}
static inline size_t max(size_t x,size_t y)
{
  return x>y ? x : y;
}

#ifdef DEBUG
void inspect_mask(tp_mask m)
{
  int i;
  for(i=0; i<PARA; i++) printf(m&bit_i(i) ?  "1" : "0");
  printf("\n");
}
#endif


