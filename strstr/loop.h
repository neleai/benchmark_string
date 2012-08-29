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

/* basic string search loop. To use it define macros below and include this file.
  LOOP_TEST(so,sn)  You are given vector sn consisting of consecutive sequence of bytes 
                    from string s. You should return an vector. This vector determines following:
                    For bytes with highest bit set to 1 a loop invokes macro
                    LOOP_BODY(p) where p is position of corresponding byte.
  LOOP_BODY(p)      see above
  
                  If you define an macro
  NEEDS_PREVIOUS_VECTOR 
                    then argument so of macro LOOP_TEST will consist of
                    Argument so consist of byte immidately before those of sn. 
                    To decide what bytes before s should be read define s_start variable 
                    with starting position.

  DETECT_END(p)     When byte p is reached call macro    LOOP_END(p)
  DETECT_ZERO_BYTE  When first zero byte is reached call LOOP_END(p)
  LOOP_END(p)       see above

  PHASE2            More lowlevel matching can be done by defining PHASE2 macro
                    You can access vectors sn0,sn1,sn2,sn3 with input and modify mvec0,mvec1,mvec2,mvec3
                    with results of LOOP_TEST. 
                    

  This file should be included inside function. A loop uses local variable s as matched string.
  Note that implementation by callback is complicated by fact that you usualy need a closure to
       share arguments.
*/

#ifndef PHASE2
#define PHASE2
#endif

#ifdef DETECT_END
#define _DETECT_END(u) (DETECT_END<=s2+u*UCHARS_IN_VECTOR)
/* For users that rely on invalid pointers suppresed by zero size */
if  (DETECT_END <= s) 
  {
    LOOP_END(s);
  }
#else
#define     DETECT_END  ((uchar*)NULL)
#define _DETECT_END(u)  0
#endif

#define TEST(u) \
     so = sn;\
     sn = sn##u = zvec##u = LOAD(s2+u*UCHARS_IN_VECTOR);\
     mvec##u  = LOOP_TEST(so,sn); \

int  i;
tp_vector sn, __attribute__((unused)) so;
int s_offset;
uchar* s2, __attribute__((unused)) * p;
s_offset=(((size_t) s)%((unroll)*sizeof(tp_vector)))/sizeof(uchar);
s2=(uchar *)(((size_t) s)&((~((size_t) unroll*sizeof(tp_vector)-1))));
/*line s2=s-s_offset; is clearer but produces slower code*/

#ifdef NEEDS_PREVIOUS_VECTOR
sn=(s_start < s2) ? LOAD(s2-sizeof(tp_vector)) : BROADCAST(0);
#endif

tp_vector mvec,zvec=BROADCAST(0);
tp_mask mask, __attribute__((unused)) zmask;
/*We could use array of vectors and loop for actions but gcc 
  does not unroll them and produces slow code.*/
#undef ACTION
#define ACTION(u)  tp_vector mvec##u,zvec##u,sn##u;

#ifdef SHORT_START
#else
DO_ACTION;
PHASE2

mask=MASK_MVECS;

#ifdef DETECT_ZERO_BYTE
  ZERO_CALC_FORGET(s_offset);
#endif

if (forget_before(mask|zmask,s_offset) || _DETECT_END(UNROLL)){
  mask =forget_before( mask,s_offset);
  zmask=forget_before(zmask,s_offset);
  if (zmask){
    endp=s2+first_bit(zmask,0);
    mask=forget_after(mask,endp-s2);
  }
  if (_DETECT_END(UNROLL) && (!endp || endp>DETECT_END)){
    mask=forget_after(mask,endp-s2);
    endp=DETECT_END;
  }
  goto test;
}

#endif

start:
;
while(1)
  {
    s2+=unroll*UCHARS_IN_VECTOR;
    PREFETCH(s2+prefetch*CACHE_LINE_SIZE);

#undef ACTION
#define ACTION(x) TEST(x)
    DO_ACTION;

  }
test:; /*We need this flow otherwise gcc would duplicate this fragment.*/
TEST_LOOP
goto start;


#undef CAN_SKIP

#undef LOOP_TEST
#undef LOOP_BODY
#undef ACTION
#undef DETECT_END
#undef _DETECT_END
