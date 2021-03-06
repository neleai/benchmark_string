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
  CONCAT(xlow,xhigh,k) concatenate xlow,xhigh and return bytes from k-th.
  SHIFT_UP(x,k), SHIFT_DOWN(x,k) shift vector x k bytes up/down
  When implementation allows variable shifts then it defines VARIABLE_SHIFT macro.

  A implementation may support function
  TEST_RANGE(x,y,z) - set highest bit of bytes that xi <= yi <= zi to 1 and 0 otherwise,rest is unspecified
  MINI(x,y)         - calculate bytewise minimum fo x,y
  MAXI(x,y)         - calculate bytewise maximum fo x,y

  By defining macro WIDE_VERSION you can use same operations that work at 32-bit integers instead of bytes. 
  
  Individual extensions are in sysdeps/arch/foo_string.h and sysdeps/arch/foo_string_wide.h
*/

#define UCHARS_IN_VECTOR (sizeof(tp_vector)/sizeof(uchar))

#define CACHE_LINE_SIZE 64
#define UN_OP(n,e) static inline tp_vector n(tp_vector x){ return e;}
#define BIN_OP(n,e) static inline tp_vector n(tp_vector x,tp_vector y){ return e;}
#define MASK_OP(name,exp) static inline tp_mask name(tp_mask x,int y){ return exp; }

#define WIDE_VERSION_STF(x) #x
#define WIDE_VERSION_CONCAT(a,b) WIDE_VERSION_STF(a##b)
#ifdef WIDE_VERSION
  #define WNAME(x) wcs##x
  #define WIDE_VERSION_HEADER(x) WIDE_VERSION_CONCAT(x,_string_wide.h)
#else
  #define WNAME(x) str##x
  #define WIDE_VERSION_HEADER(x) WIDE_VERSION_CONCAT(x,_string.h)
#endif

#if defined( USE_AVX2)
  #include WIDE_VERSION_HEADER(avx)
#elif defined( USE_SSE2) | defined(USE_SSE2_NO_BSF) | defined(USE_SSSE3) | defined(USE_SSE4_1) | defined(USE_AVX)
  #include WIDE_VERSION_HEADER(sse)
#elif defined( USE_ALTIVEC)
  #include WIDE_VERSION_HEADER(altivec)
#elif defined( USE_NEON)
  #include WIDE_VERSION_HEADER(neon)
#elif defined( USE_MDMX)
  #include WIDE_VERSION_HEADER(mdmx)
#else
  #include WIDE_VERSION_HEADER(arit)
#endif

#undef UN_OP
#undef BIN_OP
#undef MASK_OP



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


