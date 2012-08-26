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

  If you use so define STRING_START to inform how far before s we can read

  
  LOOP_BODY(p)      see above
    
  FIRST_MATCH_ONLY By default loop finds all occurences of TEST_CODE pattern.
                   If LOOP_BODY always exits function then this uses faster alternative.

                   
  DETECT_END(x)     When position p >= x is reached then we call macro LOOP_END(p)
  DETECT_ZERO_BYTE  When first zero byte is reached call LOOP_END(p)
  LOOP_END(p)       see above


*/

#ifdef ZERO_VARIANT
  #undef TEST_CODE
  #define TEST_CODE(so,sn) TEST_CODE_ZERO(so,sn)
  #undef MASK_MVECS 
  #define MASK_MVECS MASK_MVECS_ZERO
  #undef NONZERO_MVECS 
  #define NONZERO_MVECS NONZERO_MVECS_ZERO
#endif

#ifdef DETECT_END
#define _DETECT_END(u) (DETECT_END<=s2+u*UCHARS_IN_VECTOR)
if  (DETECT_END <= s)
  {
    uchar __attribute__((unused)) *p=(uchar*) s;
    LOOP_END(p);
  }
#else
#define     DETECT_END  ((uchar*)NULL)
#define _DETECT_END(u)  0
#endif

#ifdef TEST_CODE_LONG
  #define _TEST_CODE(so,sn,u) TEST_CODE(so,sn,u)
#else
  #define _TEST_CODE(so,sn,u) TEST_CODE(sn)
#endif

#define TEST(u) \
     so=sn;\
     sn=zvec##u= LOAD(s2+u*UCHARS_IN_VECTOR);\
     mvec##u = _TEST_CODE(so,sn,u); 


int  i;
tp_vector vzero=BROADCAST(0);

int s_offset;
uchar* s2,  __attribute__((unused))*endp=NULL;
tp_vector sn, __attribute__((unused)) so;
tp_mask mask=0, __attribute__((unused)) zmask=0;

s_offset=(((size_t) s)%((UNROLL)*sizeof(tp_vector)))/sizeof(uchar);
s2=(uchar *)(((size_t) s)&((~((size_t) UNROLL*sizeof(tp_vector)-1))));
/*line s2=s-s_offset; is clearer but produces slower code*/
#ifdef STRING_START
  sn=((STRING_START<s2) ? LOAD(s2-UCHARS_IN_VECTOR) : vzero);
#endif


/*We could use array of vectors and loop for actions but gcc 
  does not UNROLL them and produces slow code.*/
#undef ACTION
#define ACTION(x)  tp_vector mvec##x,zvec##x;
DO_ACTION;

#ifdef FIRST_MATCH_ONLY
 s_offset=(((size_t) s)%(sizeof(tp_vector)))/sizeof(uchar);
 s2=(uchar *)(((size_t) s)&((~((size_t) sizeof(tp_vector)-1))));
 #ifdef DETECT_ZERO_BYTE
  #define DETECT_ZERO_BYTE2 mvec0=OR(mvec0,TEST_ZERO(sz0));
 #else
  #define DETECT_ZERO_BYTE2
 #endif 

 so=sn;
 sn=sz0=LOAD(s2);
 mvec0=TEST_CODE(so,sn);
 DETECT_ZERO_BYTE2
 mask=get_mask(mvec0);
 mask=forget_before(mask,s_offset);
 if (mask){
   uchar *p=s2+first_bit(mask,0);
   LOOP_BODY(p);
 }
 s2+=UCHARS_IN_VECTOR;
 #define TEST2  so=sn;\
 sn=sz0=LOAD(s2);\
 mvec0=TEST_CODE(so,sn);\
 DETECT_ZERO_BYTE2;\
 if (NONZERO_VECTOR(mvec0)){\
   uchar *p=FIRST_BIT(mvec0);\
   LOOP_BODY(p);\
 }\
 s2+=UCHARS_IN_VECTOR;
 TEST2; TEST2; TEST2; TEST2;TEST2;TEST2;TEST2;TEST2
 s2=(uchar *)(((size_t) s)&((~((size_t) UNROLL*sizeof(tp_vector)-1))));
 goto start;
#endif

#undef ACTION
#define ACTION(x) TEST(x)
DO_ACTION;
mask=MASK_MVECS;

#ifdef DETECT_ZERO_BYTE
  zmask=MASK_ZVECS;
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
start:
;
while(1)
  {
    s2+=UNROLL*UCHARS_IN_VECTOR;
    PREFETCH(s2+prefetch*CACHE_LINE_SIZE);

#undef ACTION
#define ACTION(x) TEST(x)
    DO_ACTION;

    if ( NONZERO_ZVECS || _DETECT_END(UNROLL)){
      mask=MASK_MVECS;
#ifdef DETECT_ZERO_BYTE
      if (NONZERO_ZVECS){
        endp=s2+ZVECS_FIRST;
        mask=forget_after(mask,endp-s2);
      }
#endif
      if (_DETECT_END(UNROLL) && (!endp || endp>DETECT_END)){
        mask=forget_after(mask,endp-s2);
        endp=DETECT_END;
      }
      goto test;
    }
    if (NONZERO_MVECS ){
      mask=MASK_MVECS;
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
