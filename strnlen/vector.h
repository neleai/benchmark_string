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
  TEST_ZERO(x)      - set highest bit of bytes that were zero to 1 and 0 otherwise.
  TEST_EQ(x,y)      - set highest bit of bytes that are equal to 1 and 0 otherwise.
  BROADCAST(c)      - return vector such that all bytes have value c
  TEST_RANGE(x,y,z) - set highest bit of bytes that xi <= yi <= zi to 1 and 0 otherwise. You must satisfy condition zi-xi<128.
  AND,OR,XOR,ANDNOT - do logic operation bytewise
  SHIFT_UP(x,k), SHIFT_DOWN(x,k) shift vector x k bytes up/down
  CONCAT(xlow,xhigh,k) concatenate xlow,xhigh and return bytes from k-th.
  In shifts and concatenation k must be constant.

  To support other vector extension see sysdeps/x86_64/sse.h file.
*/
typedef unsigned char uchar;
#define SI static inline
#define UNUSED __attribute__((unused))

#include <stdlib.h>
#include <ctype.h>
/*TODO this tables should be recalculated when locale changes.*/
static uchar _tolower_class[512];
static uchar *tolower_class[256];
static uchar tolower_class_no[256];
static uchar tolower_fixed[256];
static int calc_tolower_class=0;
SI void calc_tolower_cls(void)
{
  int i,j;
  uchar *p=_tolower_class;
  /* as POSIX tolower has undefined behaviour on nonupper characters
     we construct table with defined behaviour.*/
  /* second reason is that tolower call is slow because compiler spills all used xmm registers*/
  for (i=0; i<256; i++) tolower_fixed[i] = isupper(i) ? tolower(i) : i;
  /* calculate equivalence classes*/
  for (i=0; i<256; i++)
    {
      for(j=0; j<i; j++) if(tolower_fixed[i]==tolower_fixed[j])
          {
            tolower_class_no[i]=tolower_class_no[j];
            tolower_class[i]=tolower_class[j];
            goto skip;
          }
      tolower_class[i]   =p;
      tolower_class_no[i]=0;
      for(j=i; j<256; j++)
        {
          if(tolower_fixed[i]==tolower_fixed[j])
            {
              tolower_class_no[i]++;
              *p++=j;
            }
        }
      *p++=0;
skip:
      ;
    }
  calc_tolower_class=1;
}

#define BYTES_AT_ONCE sizeof(tp_vector)
#define PARA (BYTES_AT_ONCE*unroll)
#define VSIZ_BYTE sizeof(tp_vector)
#define VSIZ_BIT  (VSIZ_BYTE*8)
#define MSIZ_BYTE sizeof(tp_mask)
#define MSIZ_BIT  (MSIZ_BYTE*8)

#define ALIGN(x,u)         s_offset=((size_t) x)%((u)*BYTES_AT_ONCE);           s2=(uchar *)(((size_t) x)&((long) (~(u*BYTES_AT_ONCE-1))));
/*line s2=x-offset; is clearer some compilers do not know that s2 is aligned*/

#define CACHE_LINE_SIZE 64
#define UN_OP(n,e) SI tp_vector n(tp_vector x){ return e;}
#define BIN_OP(n,e) SI tp_vector n(tp_vector x,tp_vector y){ return e;}
#define MASK_OP(name,exp) SI tp_mask name(tp_mask x,int y){ return exp; }

#if defined( USE_SSE2) | defined(USE_SSE2_NO_BSF) | defined(USE_SSSE3) | defined(USE_SSE4_1)
#include "sse.h"
#else
#include "arit.h"
#endif
#undef UN_OP
#undef BIN_OP
#undef MASK_OP

#if unroll==1
#define DO_ACTION ACTION(0)
#define AGREGATE_VECTOR  mvec0
#elif unroll==2
#define DO_ACTION ACTION(0) ACTION(1)
#define  AGREGATE_VECTOR    OR(mvec0,mvec1)
#elif unroll==4
#define DO_ACTION ACTION(0) ACTION(1) ACTION(2) ACTION(3)
#define AGREGATE_VECTOR OR(OR(mvec0,mvec1),OR(mvec2,mvec3))
#endif

SI size_t min(size_t x,size_t y)
{
  return x<y ? x : y;
}
SI size_t max(size_t x,size_t y)
{
  return x>y ? x : y;
}

