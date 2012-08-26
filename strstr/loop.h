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

/* basic string search loop. To use it include this file in function. We detect pattern in local
  variable s that you describe by following macros:

  UNROLL number of vectors handled in one step. Typically 4

  TEST_CODE(so,sn)  You are given vector sn consisting of consecutive sequence of bytes 
                    from string s. You should return an vector. This vector determines following:
                    For bytes with highest bit set to 1 a loop invokes macro
                    LOOP_BODY(p) where p is position of corresponding byte.
  TEST_CODE_ZERO(so,sn) As test code except detecting zero bytes

    s.........................
      | s2    | s2 + VS| s2 + 2VS| s2 + 3VS|
  
      | so    |  sn    |


   INIT_SO_VECTOR 
               s......................
      | s2 | s2+VS | s3+2VS | s4+3VS |
  
 | so | sn |


  LOOP_BODY(p)      see above
    
  FIRST_MATCH_ONLY By default loop finds all occurences of TEST_CODE pattern.
                   If LOOP_BODY always exits function then this uses faster alternative.

                   
  DETECT_END(x)     When position p >= x is reached then we call macro LOOP_END(p)
  DETECT_ZERO_BYTE  When first zero byte is reached call LOOP_END(p)
  LOOP_END(p)       see above


*/

#ifdef DETECT_ZERO_BYTE
#define _DETECT_ZERO_BYTE mvec= OR(mvec,TEST_ZERO(sz));
#define _TEST_ZERO_BYTE (*p==0)
#else
#define _DETECT_ZERO_BYTE
#define _TEST_ZERO_BYTE 0
#endif
#ifdef DETECT_END
#define _DETECT_END(u) (DETECT_END<=s2+u*UCHARS_IN_VECTOR)
if  (DETECT_END == s)
  {
    uchar __attribute__((unused)) *p=(uchar*) s;
    LOOP_END(p);
  }
#else
#define     DETECT_END  ((uchar*)NULL)
#define _DETECT_END(u)  0
#endif


#define TEST(u) \
     so=sn;\
     sn=sz##u= LOAD(s2+u*UCHARS_IN_VECTOR);\
     mvec    = TEST_CODE(so,sn); \
     mvec##u = mvec;


int  i;
tp_vector vzero=BROADCAST(0);

int s_offset;
uchar* s2,  __attribute__((unused))*endp=NULL;
s_offset=(((size_t) s)%((UNROLL)*sizeof(tp_vector)))/sizeof(uchar);
s2=(uchar *)(((size_t) s)&((~((size_t) UNROLL*sizeof(tp_vector)-1))));
/*line s2=s-s_offset; is clearer but produces slower code*/
tp_vector sn, __attribute__((unused)) so;
#ifdef INIT_SO_VECTOR
  sn=INIT_SO_VECTOR;
#endif

tp_vector mvec,zvec=vzero;
tp_mask mask=0, __attribute__((unused)) zmask=0;
/*We could use array of vectors and loop for actions but gcc 
  does not UNROLL them and produces slow code.*/
#undef ACTION
#define ACTION(x)  tp_vector mvec##x,sz##x;\
                   tp_mask mask##x;\
                   TEST(x);\
                   mask##x=get_mask(mvec##x);
DO_ACTION;
mask=AGREGATE_MASK;

#ifdef DETECT_ZERO_BYTE
  #undef ACTION
  #define ACTION(x) mvec##x=TEST_ZERO(sz##x);
  DO_ACTION;
  zmask=AGREGATE_MASK;
#endif

mask =forget_before(mask ,s_offset);
zmask=forget_before(zmask,s_offset);
if (zmask ) {
  endp=s2+first_bit(zmask,0);
  if (_DETECT_END(UNROLL) && DETECT_END < endp) endp=DETECT_END;
  goto test;
}
if (_DETECT_END(UNROLL)) {
  endp=DETECT_END;
  goto test;
}
if (mask) goto test;
start:
;
while(1)
  {
    s2+=UNROLL*UCHARS_IN_VECTOR;
    PREFETCH(s2+prefetch*CACHE_LINE_SIZE);

#undef ACTION
#define ACTION(x) TEST(x)
    DO_ACTION;
#ifdef DETECT_ZERO_BYTE
#ifdef HAS_PARALLEL_MIN
  zvec=TEST_ZERO(MINI(MINI(sz0,sz1),MINI(sz2,sz3)));
#else
  zvec=OR(OR(TEST_ZERO(sz0),TEST_ZERO(sz1)),
          OR(TEST_ZERO(sz2),TEST_ZERO(sz3)));
#endif
    if(NONZERO_MASK(zvec)){
      mask=AGREGATE_MASK;
      #undef ACTION
      #define ACTION(x) mvec##x=TEST_ZERO(sz##x);
      DO_ACTION;
      zmask=AGREGATE_MASK;
      endp=s2+first_bit(zmask,0);
      if (_DETECT_END(UNROLL) && DETECT_END < endp) endp=DETECT_END;
      mask=forget_after(mask,endp-s2);
      goto test;

    }
#endif
    if(_DETECT_END(UNROLL)){
      mask=AGREGATE_MASK;
      endp=DETECT_END;
      mask=forget_after(mask,endp-s2);
      goto test;
    }
    if(NONZERO_MASK(AGREGATE_VECTOR))
      {
        mask=AGREGATE_MASK;
        goto test;
      }
  }
test:; /*We need this flow otherwise gcc would duplicate this fragment.*/

#ifdef PHASE2
PHASE2
#endif
i=0;
while(mask)
  {
    i=first_bit(mask,i);
    uchar __attribute__((unused)) *p=s2+i;
    LOOP_BODY(p);
    mask=forget_first_bit(mask,i);
  }
if (endp){
  LOOP_END(endp);
}

goto start;


#undef CAN_SKIP

#undef TEST_CODE
#undef LOOP_BODY
#undef ACTION
#undef DETECT_END
#undef _DETECT_END
