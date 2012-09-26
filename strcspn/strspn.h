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

#ifdef STRSPN
  #define _SPN_CSPN(x,y) x
  #define _STRSPN STRSPN
#endif
#ifdef STRCSPN
  #define _SPN_CSPN(x,y) y
  #define _STRSPN STRCSPN
#endif


#include "vector.h"

static inline size_t str_shorterlen(uchar *a,uchar *b){
  tp_vector va,vb; tp_mask mask;
  int i,no=0;
  while(1){
    if (__builtin_expect(((size_t) (a+no))%4096>=4096-sizeof(tp_vector)||((size_t) (a+no))%4096>=4096-sizeof(tp_vector),0)){
      for (i=0;i<UCHARS_IN_VECTOR;i++) if (!a[i+no]||!b[i+no]) return i+no;
    }else {
      va=LOAD_UNALIGNED(a+no);  vb=LOAD_UNALIGNED(b+no);
      mask = get_mask(TEST_ZERO(MINI(va,vb)));
      if (mask) return no+first_bit(mask,0);
    }
    no+=UCHARS_IN_VECTOR;
  }
}

#define LOOP_BODY(p) return p - s;
#define LOOP_END /**/
static size_t strspn4(uchar *s,uchar c0,uchar c1,uchar c2,uchar c3){
  tp_vector v0=BROADCAST(c0),v1=BROADCAST(c1),v2=BROADCAST(c2),v3=BROADCAST(c3);
  #define TEST_CODE(so,sn) XOR(OR(OR(TEST_EQ(sn,v0),TEST_EQ(sn,v1)),OR(TEST_EQ(sn,v2),TEST_EQ(sn,v3)))\
                              ,BROADCAST(_SPN_CSPN(255,0)))
  #include "loop.h" 
}
static size_t strspn_range(uchar *s,uchar from,uchar to){
}

/*zero variant should be faster but gcc on x64 messes register allocation.*/
#define ZERO_VARIANT
#define TEST_CODE_ZERO(so,sn) sn
#define TEST_CODE(so,sn) TEST_ZERO(sn)
#ifdef ZERO_VARIANT
  #define PHASE2TEST(u)  v##u=XOR(v##u,vx); mvec##u=MINI(mvec##u,v##u);
#else
  #define PHASE2TEST(u) mvec##u=OR(mvec##u,TEST_EQ(v##u,vc));
#endif
#define PHASE2 {int i,xo=0;\
v0=LOAD(s2);v1=LOAD(s2+1*UCHARS_IN_VECTOR);v2=LOAD(s2+2*UCHARS_IN_VECTOR);v3=LOAD(s2+3*UCHARS_IN_VECTOR);\
for (i=0;i<ns;i++){xo=xo^n[i]; vx=BROADCAST(xo);vc=BROADCAST(n[i]);\
PHASE2TEST(0); PHASE2TEST(1); PHASE2TEST(2); PHASE2TEST(3);\
}\
if (_SPN_CSPN(0,1)){\
mvec0=TEST_EQ(mvec0,BROADCAST(0));mvec1=TEST_EQ(mvec1,BROADCAST(0));mvec2=TEST_EQ(mvec2,BROADCAST(0));mvec3=TEST_EQ(mvec3,BROADCAST(0));\
}\
}

#define LOOP_BODY(p) return p - s;
#define LOOP_END /**/
size_t _STRSPN(const uchar *_s,const uchar *_n)
{
  tp_vector vc,vx,v0,v1,v2,v3; int i;
  uchar *s=(uchar *)_s,*n=(uchar *)_n;
  size_t ns=str_shorterlen(n,n);
  if (ns==0) return _SPN_CSPN(0,strlen(s));
  if (ns==1) return _SPN_CSPN(strspn4(s,n[0],0,0,0)
                   ,strchr(s,n[0])-(char*)s);
  if (ns==2) return strspn4(s,n[0],n[1],0,0);
  if (ns==3) return strspn4(s,n[0],n[1],n[2],0);
#ifndef WIDE_VERSION
  if (ns>16) {
    uchar chars[256];
    memset(chars,0,256);
    for(i=0;i<ns;i++)
      chars[n[i]]=1;
    chars[0]=_SPN_CSPN(0,1);
    i=0;
    while(1){
      #undef TEST
      #define TEST \
      if(chars[s[i]]==_SPN_CSPN(0,1)) return i;\
      i++;
      TEST; TEST; TEST; TEST;
    }
  }
#endif
#ifdef USE_SSE4_2

#endif

  #include "loop.h"
}


