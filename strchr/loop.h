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

/* Basic string search loop. String functions are implemented by including this file inside corresponding function.
    
  This loop matches string in local variable 
  s                 string to match

  LOOP_TEST(so,sn)  You are given vector sn consisting of consecutive sequence of bytes 
                    from string s. You should return an vector. This vector determines following:
                    For bytes with highest bit set to 1 a loop invokes macro
                    LOOP_BODY(p) where p is position of corresponding byte.
                    See string/vector.h for vector expression description.
  LOOP_BODY(p)      see above
  
  
  You can handle terminating condition by defining
  DETECT_END        When address in local variable s_end is reached LOOP_END(s_end) is called.
  DETECT_ZERO_BYTE  When zero byte is reached LOOP_END(p) is called
  LOOP_END(p)       see above

  When you match multibyte pattern then to also handle ending condition you should set bytes that correspond 
  to end of your pattern. 

  PHASE2            More lowlevel matching can be done by defining PHASE2 macro
                    You can access vectors sn0,sn1,sn2,sn3 with input and modify mvec0,mvec1,mvec2,mvec3
                    with results of LOOP_TEST. 
  PHASE2_SHORT      As phase2 except only mvec0 is relevant. 
             
performance can be improved by       
  SHORT_START       do first 4 iteartions individualy, then proceed as before.
  PREFETCH x        prefetch address 64*x after current address if implementation supports it.
  ZERO_VARIANT

*/

#ifndef PHASE2
#define PHASE2
#endif
#ifdef ZERO_VARIANT
  #define _ZERO_VARIANT(x,y) x
#else
  #define _ZERO_VARIANT(x,y) y
#endif
#ifdef DETECT_ZERO_BYTE
  #define _DETECT_ZERO_BYTE(x,y) x
#else
  #define _DETECT_ZERO_BYTE(x,y) y
#endif

uchar *endp=NULL;
tp_mask mask,zmask;


#ifdef DETECT_END
#define _DETECT_END(u) if (s_end<=s2+u*UCHARS_IN_VECTOR) endp = s_end;
/* For users that rely on invalid pointers suppresed by zero size */
if  (s_end == s) 
  {
    LOOP_END(s_end);
  }
#else
#define _DETECT_END(u)  
#endif

#define TEST(u) \
     so = sn;\
     sn = sn##u  = LOAD(s2+u*UCHARS_IN_VECTOR);\
     mvec##u     = _ZERO_VARIANT(LOOP_TEST_ZERO(so,sn),\
                                 LOOP_TEST(so,sn)); \

int  i;
tp_vector sn, __attribute__((unused)) so;
int s_offset;
uchar* s2, __attribute__((unused)) * p;



#if UNROLL==4
/*We could use array of vectors and loop for actions but gcc 
  does not unroll them and produces slow code.*/
  tp_vector mvec0,sn0,mvec1,sn1,mvec2,sn2,mvec3,sn3;
#define TEST_LARGE \
  TEST(0); TEST(1); TEST(2); TEST(3);\
  PHASE2\
  _DETECT_END(4);
#endif

#ifdef SHORT_START
  #define SHORT(x,y) x
  s_offset=(((size_t) s)%(sizeof(tp_vector)))/sizeof(uchar);
  s2      =(uchar *)(((size_t) s)&((~((size_t) sizeof(tp_vector)-1))));
/*line s2=s-s_offset; is clearer but produces slower code*/
#ifdef S_START
sn=(S_START < s2) ? LOAD(s2-sizeof(tp_vector)) : BROADCAST(0);
#endif


  #define TEST_SHORT\
    TEST(0);\
    PHASE2_SHORT;\
    _DETECT_END(1);

  TEST_SHORT
  MASK_LOOP_FIRST(s_offset,endp);
  s2+=UCHARS_IN_VECTOR;
  TEST_SHORT(endp);
  MASK_LOOP(endp);
  s2+=UCHARS_IN_VECTOR;
  TEST_SHORT(endp);
  MASK_LOOP(endp);
  s2+=UCHARS_IN_VECTOR;
  TEST_SHORT(endp);
  MASK_LOOP(endp);
  s2+=UCHARS_IN_VECTOR;
 
  s2=(uchar *)(((size_t) s)&((~((size_t) UNROLL*sizeof(tp_vector)-1))))-UNROLL*UCHARS_IN_VECTOR;
  #ifdef S_START
  sn=(S_START < s2) ? LOAD(s2-sizeof(tp_vector)) : BROADCAST(0);
  #endif

#else
  #define SHORT(x,y) y
  s_offset=(((size_t) s)%((UNROLL)*sizeof(tp_vector)))/sizeof(uchar);
  s2=(uchar *)(((size_t) s)&((~((size_t) UNROLL*sizeof(tp_vector)-1))));
  #ifdef S_START
  sn=(S_START < s2) ? LOAD(s2-sizeof(tp_vector)) : BROADCAST(0);
  #endif


  TEST_LARGE
  MASK_LOOP_FIRST(s_offset,endp);
#endif
#undef  SHORT
#define SHORT(x,y) y

start:;
while(1)
  {
    s2+=UNROLL*UCHARS_IN_VECTOR;
    PREFETCH(s2+prefetch*CACHE_LINE_SIZE);

    TEST_LARGE;
    if (_DETECT_ZERO_BYTE(NONZERO_ZVECS,0) || endp){
      HANDLE_ZERO_BYTE;
      goto epilog_end;
    }
    if(NONZERO_MVECS){
      goto epilog;
    }

  }
/*gcc likes to duplicate code so we avoid this by jump.*/
epilog:;
  ENUM_PATTERN_LOOP;
  goto start;
epilog_end:;
  ENUM_PATTERN_LOOP;
  LOOP_END(endp);
#undef  SHORT
#define SHORT(x,y) x
epilog_end_short:;
  ENUM_PATTERN_LOOP;
  LOOP_END(endp);


