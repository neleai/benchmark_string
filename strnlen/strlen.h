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


#define unroll 4
#define prefetch 8

#include "vector.h"

#define DETECT_ZERO_BYTE
#define TEST_CODE(so,sn) vzero
#define LOOP_BODY(p) return p-s;
#define FIRST_UNALIGNED

#ifdef AS_STRNLEN
#define DETECT_END ((s+ss>=s) ? s+ss : ((uchar*)((long)-1)))
#define LOOP_END(p)  return p-s;
size_t STRNLEN( uchar *s , size_t ss )
#endif
#ifdef AS_STRLEN
#define LOOP_END(p)  return p-s;
size_t STRLEN(  uchar *s )
#endif
{
#include "loop.h"
}
