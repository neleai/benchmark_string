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

#define prefetch 8

//#define SHORT_START
//#define ZERO_VARIANT
#include "vector.h"

#define LOOP_END(p)
#define LOOP_BODY(p) return (*p==c) ? p : NULL;
#define LOOP_TEST(so,sn) OR(TEST_EQ(sn,vc),TEST_ZERO(sn));
#define LOOP_TEST_ZERO(so,sn) MINI(XOR(sn,vc),sn);


#define FIRST_MATCH_ONLY
uchar* STRCHR(   const uchar *s, int c )
{
  uchar  __attribute__((unused)) *r = NULL;
  tp_vector vc=BROADCAST(c);
#include "loop.h"
}
