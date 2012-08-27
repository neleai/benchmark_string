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
#include "endian.h"
#define unroll 4
#if     __WORDSIZE == 64
typedef uint64_t tp_vector;
typedef uint64_t tp_mask;
#elif   __WORDSIZE == 32
typedef uint32_t tp_vector;
typedef uint32_t tp_mask;
#endif

const tp_vector ONES=((~((tp_vector)0))/255);
const tp_vector HIGH_BIT=(((~((tp_vector)0))/255)*0x80);

SI tp_vector BROADCAST(uchar c)
{
  return ONES*c;
}
SI tp_vector LOAD(              uchar *x)
{
  return (*((tp_vector*)(x)));
}
SI tp_vector LOAD_UNALIGNED(    uchar *x)
{
  return (*((tp_vector*)(x)));
}

#define PREFETCH(x)


SI tp_mask get_mask(tp_vector x)
{
  return     x&HIGH_BIT;
}
SI int NONZERO_MASK(tp_vector x)
{
  return get_mask(x)!=0;
}


#if __BYTE_ORDER == __LITTLE_ENDIAN
SI tp_mask bit_i(int i)
{
  return ((tp_mask) 1)<<(8*(i%BYTES_AT_ONCE)+7-(i/BYTES_AT_ONCE) );
}
#elif __BYTE_ORDER == __BIG_ENDIAN
SI tp_mask bit_i(int i)
{
  return ((tp_mask) 1)<<(8*(BYTES_AT_ONCE-1-i%BYTES_AT_ONCE)+7-(i/BYTES_AT_ONCE));
}
#endif

#ifdef CALCULATE_MASK
SI int  calculate_mask_before_after()
{
  int i,j;
  printf("static tp_mask kill_before[]={");
  for(j=0; j<8*BYTES_AT_ONCE; j++)
    {
      tp_mask mask=0;
      for(i=j; i<8*BYTES_AT_ONCE; i++) mask|=bit_i(i);
      printf("0x%llx,",mask);
    }
  printf("0};\n");
  printf("static tp_mask kill_after[]={");
  for(j=0; j<8*BYTES_AT_ONCE; j++)
    {
      tp_mask mask=0;
      for(i=0; i<=j; i++) mask|=bit_i(i);
      printf("0x%llx,",mask);
    }
  printf("0};\n");
}
#endif
#if __WORDSIZE == 32
#if __BYTE_ORDER == __LITTLE_ENDIAN
static tp_mask kill_before[]= {0xffffffff,0xffffff7f,0xffff7f7f,0xff7f7f7f,0x7f7f7f7f,0x7f7f7f3f,0x7f7f3f3f,0x7f3f3f3f,0x3f3f3f3f,0x3f3f3f1f,0x3f3f1f1f,0x3f1f1f1f,0x1f1f1f1f,0x1f1f1f0f,0x1f1f0f0f,0x1f0f0f0f,0xf0f0f0f,0xf0f0f07,0xf0f0707,0xf070707,0x7070707,0x7070703,0x7070303,0x7030303,0x3030303,0x3030301,0x3030101,0x3010101,0x1010101,0x1010100,0x1010000,0x1000000,0};
static tp_mask kill_after[]= {0x80,0x8080,0x808080,0x80808080,0x808080c0,0x8080c0c0,0x80c0c0c0,0xc0c0c0c0,0xc0c0c0e0,0xc0c0e0e0,0xc0e0e0e0,0xe0e0e0e0,0xe0e0e0f0,0xe0e0f0f0,0xe0f0f0f0,0xf0f0f0f0,0xf0f0f0f8,0xf0f0f8f8,0xf0f8f8f8,0xf8f8f8f8,0xf8f8f8fc,0xf8f8fcfc,0xf8fcfcfc,0xfcfcfcfc,0xfcfcfcfe,0xfcfcfefe,0xfcfefefe,0xfefefefe,0xfefefeff,0xfefeffff,0xfeffffff,0xffffffff,0};
#else
static tp_mask kill_before[]= {0xffffffff,0x7fffffff,0x7f7fffff,0x7f7f7fff,0x7f7f7f7f,0x3f7f7f7f,0x3f3f7f7f,0x3f3f3f7f,0x3f3f3f3f,0x1f3f3f3f,0x1f1f3f3f,0x1f1f1f3f,0x1f1f1f1f,0xf1f1f1f,0xf0f1f1f,0xf0f0f1f,0xf0f0f0f,0x70f0f0f,0x7070f0f,0x707070f,0x7070707,0x3070707,0x3030707,0x3030307,0x3030303,0x1030303,0x1010303,0x1010103,0x1010101,0x10101,0x101,0x1,0};
static tp_mask kill_after[]= {0x80000000,0x80800000,0x80808000,0x80808080,0xc0808080,0xc0c08080,0xc0c0c080,0xc0c0c0c0,0xe0c0c0c0,0xe0e0c0c0,0xe0e0e0c0,0xe0e0e0e0,0xf0e0e0e0,0xf0f0e0e0,0xf0f0f0e0,0xf0f0f0f0,0xf8f0f0f0,0xf8f8f0f0,0xf8f8f8f0,0xf8f8f8f8,0xfcf8f8f8,0xfcfcf8f8,0xfcfcfcf8,0xfcfcfcfc,0xfefcfcfc,0xfefefcfc,0xfefefefc,0xfefefefe,0xfffefefe,0xfffffefe,0xfffffffe,0xffffffff,0};
#endif
#elif __WORDSIZE == 64
#if __BYTE_ORDER == __LITTLE_ENDIAN
static tp_mask kill_before[]= {0xffffffffffffffff,0xffffffffffffff7f,0xffffffffffff7f7f,0xffffffffff7f7f7f,0xffffffff7f7f7f7f,0xffffff7f7f7f7f7f,0xffff7f7f7f7f7f7f,0xff7f7f7f7f7f7f7f,0x7f7f7f7f7f7f7f7f,0x7f7f7f7f7f7f7f3f,0x7f7f7f7f7f7f3f3f,0x7f7f7f7f7f3f3f3f,0x7f7f7f7f3f3f3f3f,0x7f7f7f3f3f3f3f3f,0x7f7f3f3f3f3f3f3f,0x7f3f3f3f3f3f3f3f,0x3f3f3f3f3f3f3f3f,0x3f3f3f3f3f3f3f1f,0x3f3f3f3f3f3f1f1f,0x3f3f3f3f3f1f1f1f,0x3f3f3f3f1f1f1f1f,0x3f3f3f1f1f1f1f1f,0x3f3f1f1f1f1f1f1f,0x3f1f1f1f1f1f1f1f,0x1f1f1f1f1f1f1f1f,0x1f1f1f1f1f1f1f0f,0x1f1f1f1f1f1f0f0f,0x1f1f1f1f1f0f0f0f,0x1f1f1f1f0f0f0f0f,0x1f1f1f0f0f0f0f0f,0x1f1f0f0f0f0f0f0f,0x1f0f0f0f0f0f0f0f,0xf0f0f0f0f0f0f0f,0xf0f0f0f0f0f0f07,0xf0f0f0f0f0f0707,0xf0f0f0f0f070707,0xf0f0f0f07070707,0xf0f0f0707070707,0xf0f070707070707,0xf07070707070707,0x707070707070707,0x707070707070703,0x707070707070303,0x707070707030303,0x707070703030303,0x707070303030303,0x707030303030303,0x703030303030303,0x303030303030303,0x303030303030301,0x303030303030101,0x303030303010101,0x303030301010101,0x303030101010101,0x303010101010101,0x301010101010101,0x101010101010101,0x101010101010100,0x101010101010000,0x101010101000000,0x101010100000000,0x101010000000000,0x101000000000000,0x100000000000000,0};
static tp_mask kill_after[]= {0x80,0x8080,0x808080,0x80808080,0x8080808080,0x808080808080,0x80808080808080,0x8080808080808080,0x80808080808080c0,0x808080808080c0c0,0x8080808080c0c0c0,0x80808080c0c0c0c0,0x808080c0c0c0c0c0,0x8080c0c0c0c0c0c0,0x80c0c0c0c0c0c0c0,0xc0c0c0c0c0c0c0c0,0xc0c0c0c0c0c0c0e0,0xc0c0c0c0c0c0e0e0,0xc0c0c0c0c0e0e0e0,0xc0c0c0c0e0e0e0e0,0xc0c0c0e0e0e0e0e0,0xc0c0e0e0e0e0e0e0,0xc0e0e0e0e0e0e0e0,0xe0e0e0e0e0e0e0e0,0xe0e0e0e0e0e0e0f0,0xe0e0e0e0e0e0f0f0,0xe0e0e0e0e0f0f0f0,0xe0e0e0e0f0f0f0f0,0xe0e0e0f0f0f0f0f0,0xe0e0f0f0f0f0f0f0,0xe0f0f0f0f0f0f0f0,0xf0f0f0f0f0f0f0f0,0xf0f0f0f0f0f0f0f8,0xf0f0f0f0f0f0f8f8,0xf0f0f0f0f0f8f8f8,0xf0f0f0f0f8f8f8f8,0xf0f0f0f8f8f8f8f8,0xf0f0f8f8f8f8f8f8,0xf0f8f8f8f8f8f8f8,0xf8f8f8f8f8f8f8f8,0xf8f8f8f8f8f8f8fc,0xf8f8f8f8f8f8fcfc,0xf8f8f8f8f8fcfcfc,0xf8f8f8f8fcfcfcfc,0xf8f8f8fcfcfcfcfc,0xf8f8fcfcfcfcfcfc,0xf8fcfcfcfcfcfcfc,0xfcfcfcfcfcfcfcfc,0xfcfcfcfcfcfcfcfe,0xfcfcfcfcfcfcfefe,0xfcfcfcfcfcfefefe,0xfcfcfcfcfefefefe,0xfcfcfcfefefefefe,0xfcfcfefefefefefe,0xfcfefefefefefefe,0xfefefefefefefefe,0xfefefefefefefeff,0xfefefefefefeffff,0xfefefefefeffffff,0xfefefefeffffffff,0xfefefeffffffffff,0xfefeffffffffffff,0xfeffffffffffffff,0xffffffffffffffff,0};
#elif __BYTE_ORDER == __BIG_ENDIAN
static tp_mask kill_before[]= {0xffffffffffffffff,0x7fffffffffffffff,0x7f7fffffffffffff,0x7f7f7fffffffffff,0x7f7f7f7fffffffff,0x7f7f7f7f7fffffff,0x7f7f7f7f7f7fffff,0x7f7f7f7f7f7f7fff,0x7f7f7f7f7f7f7f7f,0x3f7f7f7f7f7f7f7f,0x3f3f7f7f7f7f7f7f,0x3f3f3f7f7f7f7f7f,0x3f3f3f3f7f7f7f7f,0x3f3f3f3f3f7f7f7f,0x3f3f3f3f3f3f7f7f,0x3f3f3f3f3f3f3f7f,0x3f3f3f3f3f3f3f3f,0x1f3f3f3f3f3f3f3f,0x1f1f3f3f3f3f3f3f,0x1f1f1f3f3f3f3f3f,0x1f1f1f1f3f3f3f3f,0x1f1f1f1f1f3f3f3f,0x1f1f1f1f1f1f3f3f,0x1f1f1f1f1f1f1f3f,0x1f1f1f1f1f1f1f1f,0xf1f1f1f1f1f1f1f,0xf0f1f1f1f1f1f1f,0xf0f0f1f1f1f1f1f,0xf0f0f0f1f1f1f1f,0xf0f0f0f0f1f1f1f,0xf0f0f0f0f0f1f1f,0xf0f0f0f0f0f0f1f,0xf0f0f0f0f0f0f0f,0x70f0f0f0f0f0f0f,0x7070f0f0f0f0f0f,0x707070f0f0f0f0f,0x70707070f0f0f0f,0x7070707070f0f0f,0x707070707070f0f,0x70707070707070f,0x707070707070707,0x307070707070707,0x303070707070707,0x303030707070707,0x303030307070707,0x303030303070707,0x303030303030707,0x303030303030307,0x303030303030303,0x103030303030303,0x101030303030303,0x101010303030303,0x101010103030303,0x101010101030303,0x101010101010303,0x101010101010103,0x101010101010101,0x1010101010101,0x10101010101,0x101010101,0x1010101,0x10101,0x101,0x1,0};
static tp_mask kill_after[]= {0x8000000000000000,0x8080000000000000,0x8080800000000000,0x8080808000000000,0x8080808080000000,0x8080808080800000,0x8080808080808000,0x8080808080808080,0xc080808080808080,0xc0c0808080808080,0xc0c0c08080808080,0xc0c0c0c080808080,0xc0c0c0c0c0808080,0xc0c0c0c0c0c08080,0xc0c0c0c0c0c0c080,0xc0c0c0c0c0c0c0c0,0xe0c0c0c0c0c0c0c0,0xe0e0c0c0c0c0c0c0,0xe0e0e0c0c0c0c0c0,0xe0e0e0e0c0c0c0c0,0xe0e0e0e0e0c0c0c0,0xe0e0e0e0e0e0c0c0,0xe0e0e0e0e0e0e0c0,0xe0e0e0e0e0e0e0e0,0xf0e0e0e0e0e0e0e0,0xf0f0e0e0e0e0e0e0,0xf0f0f0e0e0e0e0e0,0xf0f0f0f0e0e0e0e0,0xf0f0f0f0f0e0e0e0,0xf0f0f0f0f0f0e0e0,0xf0f0f0f0f0f0f0e0,0xf0f0f0f0f0f0f0f0,0xf8f0f0f0f0f0f0f0,0xf8f8f0f0f0f0f0f0,0xf8f8f8f0f0f0f0f0,0xf8f8f8f8f0f0f0f0,0xf8f8f8f8f8f0f0f0,0xf8f8f8f8f8f8f0f0,0xf8f8f8f8f8f8f8f0,0xf8f8f8f8f8f8f8f8,0xfcf8f8f8f8f8f8f8,0xfcfcf8f8f8f8f8f8,0xfcfcfcf8f8f8f8f8,0xfcfcfcfcf8f8f8f8,0xfcfcfcfcfcf8f8f8,0xfcfcfcfcfcfcf8f8,0xfcfcfcfcfcfcfcf8,0xfcfcfcfcfcfcfcfc,0xfefcfcfcfcfcfcfc,0xfefefcfcfcfcfcfc,0xfefefefcfcfcfcfc,0xfefefefefcfcfcfc,0xfefefefefefcfcfc,0xfefefefefefefcfc,0xfefefefefefefefc,0xfefefefefefefefe,0xfffefefefefefefe,0xfffffefefefefefe,0xfffffffefefefefe,0xfffffffffefefefe,0xfffffffffffefefe,0xfffffffffffffefe,0xfffffffffffffffe,0xffffffffffffffff,0};
#endif
#endif
SI tp_mask first_bit(tp_mask t,int y)
{
  while (!(t&bit_i(y))) y++;
  return y;
}
MASK_OP(forget_first_bit, x^bit_i(y))
MASK_OP(forget_before   , x&((y>=PARA) ? 0 : kill_before[y]))
MASK_OP(forget_after    , x&((y<0)     ? 0 : kill_after[ y]))


BIN_OP(XOR,x^y)
BIN_OP(OR,x|y)
BIN_OP(AND,x&y)
BIN_OP(ANDNOT,x&(~y))
UN_OP(TEST_ZERO,(AND(~(OR(x,HIGH_BIT)-ONES),~(x))))
BIN_OP(TEST_EQ,TEST_ZERO(XOR(x,y)));

#define SHIFT_DOWN(x,y) ((x)>>(8*(y)))
#define SHIFT_UP(x,y)   ((x)<<(8*(y)))
#define CONCAT(x,y,n) ((n==0) ? (y) : ((n==BYTES_AT_ONCE) ? (x) : OR(SHIFT_UP(x,BYTES_AT_ONCE-(n)),SHIFT_DOWN(y,(n)))))


#ifdef DEBUG
void inspect_mask(tp_mask m)
{
  int i;
  for(i=0; i<PARA; i++) printf(m&bit_i(i) ?  "1" : "0");
  printf("\n");
}
#endif


/* TODO implement TEST_RANGE for generic parallel_tolower
SI tp_vector TEST_RANGE(tp_vector v,uchar from,uchar to){
	tp_vector fv=BROADCAST(-127-from);
	v=_mm_add_epi8(v,fv);
	tp_vector tv=BROADCAST(-127+to-from+1);
	return _mm_cmplt_epi8(v,tv);
}

SI tp_vector parallel_tolower(tp_vector m){tp_mask mask;
	tp_vector high_bit=BROADCAST(128);
  tp_vector l= AND(TEST_RANGE(m,'A','Z'),high_bit);
	m=OR(m,_mm_srli_epi64(l,2));
	if ((mask=get_mask(m))){int i;
    while(mask){ i=first_bit(mask); mask=forget_first_bit(mask,i);
			((uchar*)&m)[i]=tolower(((uchar*)&m)[i]);
    }
	}
	return m;
}
*/


SI tp_vector parallel_tolower(tp_vector m)
{
  int i;
  tp_vector r;
  for(i=0; i<sizeof(tp_vector); i++)
    ((uchar*)&r)[i]=tolower_fixed[((uchar*)&m)[i]];
  return r;
}


#if unroll==1
#define AGREGATE_MASK     mask0
#elif unroll==2
#define AGREGATE_MASK   (mask0|(mask1>>1))
#elif unroll==4
#define AGREGATE_MASK   ((mask0|(mask1>>1))|((mask2>>2)|(mask3>>3)))
#endif
