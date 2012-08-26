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


tp_vector vn0=BROADCAST(MASK_CONVERT(n[ns-1-0]));
tp_vector vn1=BROADCAST(MASK_CONVERT(n[ns-1-1]));
tp_vector e0,e1;
#if defined(STRSTR) || defined(STRCASESTR)
#define DETECT_ZERO_BYTE
#endif

#ifdef MEMMEM
#define DETECT_END s_end
#endif


#ifdef USE_ARITHMETIC
#define TEST_CODE(so,sn) vzero;\
   sn   = CASE_CONVERT(sn);\
   e0   = XOR(CONCAT(sn,so,UCHARS_IN_VECTOR-0),vn0);\
   e1   = XOR(CONCAT(sn,so,UCHARS_IN_VECTOR-1),vn1);\
   mvec = TEST_ZERO(OR(e0,e1));
#else
#define TEST_CODE(so,sn) vzero;\
   sn   = CASE_CONVERT(sn);\
   e0   = TEST_EQ(CONCAT(sn,so,UCHARS_IN_VECTOR-0),vn0); \
   e1   = TEST_EQ(CONCAT(sn,so,UCHARS_IN_VECTOR-1),vn1); \
   mvec = (AND(e0,e1));
#endif

#define LOOP_END(p) return NULL;
#include "loop.h"

#undef TEST_CODE
#undef LOOP_BODY
#undef LOOP_END
#undef CASE_CONVERT
#undef MASK_CONVERT
