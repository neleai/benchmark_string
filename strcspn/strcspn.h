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

#include <stdlib.h>
#include <string.h>

#include "vector.h"
tp_vector vc,v0,v1,v2,v3;


#define ZERO_VARIANT

/*a zero variant should be faster but gcc messes register allocation.*/
#define TEST_CODE_ZERO(so,sn) sn
#define TEST_CODE(     so,sn) TEST_ZERO(sn)
#ifdef ZERO_VARIANT
#define PHASE2 {int i,xo=0;\
v0=LOAD(s2);v1=LOAD(s2+1*UCHARS_IN_VECTOR);v2=LOAD(s2+2*UCHARS_IN_VECTOR);v3=LOAD(s2+3*UCHARS_IN_VECTOR);\
for (i=0;i<ns;i++){xo=xo^n[i]; vc=BROADCAST(xo);\
v0=XOR(v0,vc); mvec0=MINI(mvec0,v0);v1=XOR(v1,vc); mvec1=MINI(mvec1,v1);v2=XOR(v2,vc); mvec2=MINI(mvec2,v2);v3=XOR(v3,vc); mvec3=MINI(mvec3,v3);\
}\
}
#else
#define PHASE2 {int i,xo=0;\
v0=LOAD(s2);v1=LOAD(s2+1*UCHARS_IN_VECTOR);v2=LOAD(s2+2*UCHARS_IN_VECTOR);v3=LOAD(s2+3*UCHARS_IN_VECTOR);\
for (i=0;i<ns;i++){xo=xo^n[i]; vc=BROADCAST(xo);\
v0=XOR(v0,vc); mvec0=MINI(mvec0,v0);v1=XOR(v1,vc); mvec1=MINI(mvec1,v1);v2=XOR(v2,vc); mvec2=MINI(mvec2,v2);v3=XOR(v3,vc); mvec3=MINI(mvec3,v3);\
}\
}
#endif


#define LOOP_BODY(p) return p - s;
#define LOOP_END /**/

size_t *STRSPN(const uchar *_s,const uchar *_n)
{
  uchar *s=(uchar *)_s,*n=(uchar *)_n;
  size_t ns=strlen(n);
  
  #include "loop.h"
}

