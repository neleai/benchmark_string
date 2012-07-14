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
  TEST_CODE(so,sn)  given consecutive sequence so,sn of bytes  you should produce an
                    vector. For bytes with highest bit set to 1 a loop invokes macro
                    LOOP_BODY(p) where p is coresponding byte in sn.
  LOOP_BODY(p)      see above
  DETECT_END(p)     When byte p is reached call macro    LOOP_END(p)
  DETECT_ZERO_BYTE  When first zero byte is reached call LOOP_END(p)
  LOOP_END(p)       see above

  CAN_SKIP          You have to define skip_to variable. Then a loop will not call
                    LOOP_BODY(p) when p<skip_to. A LOOP_END condition will still be processed.

  This file should be included inside function. A loop uses local variable s as matched string.
  Note that implementation by callback is complicated by fact that you usualy need a closure to
       share arguments.
*/

#ifdef DETECT_ZERO_BYTE
#define _DETECT_ZERO_BYTE mvec= OR(mvec,TEST_ZERO(sz));
#define _TEST_ZERO_BYTE (*p==0)
#else
#define _DETECT_ZERO_BYTE
#define _TEST_ZERO_BYTE 0
#endif
#ifdef DETECT_END
#define _DETECT_END(u) (DETECT_END<=s2+u*BYTES_AT_ONCE)
if  (DETECT_END == s)
  {
    uchar UNUSED *p=s;
    LOOP_END(p);
  }
#else
#define     DETECT_END  ((uchar*)NULL)
#define _DETECT_END(u)  0
#endif


#define TEST(u) \
     mvec=vzero;\
     so=sn;\
     sn=sz##u= LOAD(s2+u*BYTES_AT_ONCE);\
     mvec    = TEST_CODE(so,sn); \
     mvec##u = mvec;


int  i;
tp_vector vzero=BROADCAST(0);
tp_vector sn,so,sz0,sz1,sz2,sz3;
int s_offset;
uchar* s2;
sn=vzero;
ALIGN(s,unroll);
tp_vector mvec,zvec=vzero;
tp_mask mask, UNUSED zmask;
#undef ACTION
#define ACTION(x) tp_vector mvec##x; tp_mask mask##x;
DO_ACTION;
#undef ACTION
#define ACTION(x) TEST(x)
DO_ACTION;

#ifdef DETECT_ZERO_BYTE
  #undef ACTION
  #define ACTION(x) mvec##x=OR(mvec##x,TEST_ZERO(sz##x));
  DO_ACTION;
#endif

#undef ACTION
#define ACTION(x) mask##x=get_mask(mvec##x);
DO_ACTION;
mask=AGREGATE_MASK;
mask=forget_before(mask,s_offset);
if (mask||_DETECT_END(unroll)) goto test;
start:
;
while(1)
  {
    s2+=PARA;
    PREFETCH(s2+prefetch*CACHE_LINE_SIZE);
#undef ACTION
#define ACTION(x) TEST(x)
    DO_ACTION;
#ifdef DETECT_ZERO_BYTE
#if unroll==1
  zvec=zvec0;
#elif unroll==2
#ifdef HAS_PARALLEL_MIN
  zvec=TEST_ZERO(MINI(MINI(sz0,sz1)));
#else
  zvec=OR(OR(TEST_ZERO(sz0),TEST_ZERO(sz1)));
#endif
#elif unroll==4
#ifdef HAS_PARALLEL_MIN
  zvec=TEST_ZERO(MINI(MINI(sz0,sz1),MINI(sz2,sz3)));
#else
  zvec=OR(OR(TEST_ZERO(sz0),TEST_ZERO(sz1)),
          OR(TEST_ZERO(sz2),TEST_ZERO(sz3)));
#endif
#endif
#endif
    if(NONZERO_MASK(OR(AGREGATE_VECTOR,zvec))||_DETECT_END(unroll))
      {
        /* on x64 or is destructive operation
           in case of strlen it is faster to recalculate
           mvec0,mvec2 than move them to separate registers.*/

#ifdef DETECT_ZERO_BYTE
  #undef ACTION
  #define ACTION(x) mvec##x=OR(mvec##x,TEST_ZERO(sz##x));
  DO_ACTION;
#endif

#undef ACTION
#define ACTION(x) mask##x=get_mask(mvec##x);
        DO_ACTION;
        mask=AGREGATE_MASK;
        goto test;
      }
  }
test:; /*we need this flow otherwise gcc would duplicate this fragment.*/
int end=0;
#ifdef CAN_SKIP
/* detect zero byte so it cannot be skipped.*/
#ifdef DETECT_ZERO_BYTE
#define ZTEST(u) \
     mask##u=get_mask(TEST_ZERO(sz##u));
#undef ACTION
#define ACTION(x) ZTEST(x)
DO_ACTION;
zmask=AGREGATE_MASK;
if (s>s2)
  zmask=forget_before(zmask,s_offset);

if(zmask) end = first_bit(zmask,0)+1;
#endif
if(skip_to>s2)
  mask=forget_before(mask,skip_to-s2);
#endif
if (_DETECT_END(unroll)) /*we need to handle case when end is at start of next page here*/
  {
    end = min(DETECT_END-s2-1,end ? (end-1) : 64)+1;
  }
if (end)
  {
    mask=forget_after(mask,end-1);
  }
i=0;
while(mask)
  {
    i=first_bit(mask,i);
    uchar UNUSED *p=s2+i;
    if(__builtin_expect(_TEST_ZERO_BYTE,0))
      {
        LOOP_END(p)
      }
    LOOP_BODY(p)
#ifdef CAN_SKIP
    mask=forget_before(mask,skip_to-s2);
#else
    mask=forget_first_bit(mask,i);
#endif
  }
if(end)
  {
    uchar UNUSED *p=DETECT_END;
    LOOP_END(p);
  }

goto start;


#undef CAN_SKIP

#undef TEST_CODE
#undef LOOP_BODY
#undef ACTION
#undef DETECT_END
#undef _DETECT_END
