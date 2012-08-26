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


#ifdef WCSSTR
  #define WIDE_VERSION
  #define STRSTR WCSSTR
  #define strchr wcschr
#endif

#if defined(STRSTR)+defined(STRCASESTR)+defined(MEMMEM)!=1
  #error "exactly one of STRSTR STRCASESTR MEMMEM function must be specified"
#endif

#define prefetch 8
#define small_treshold 128

#include "vector.h"



#ifdef STRSTR
#define _STR_CASESTR_MEM(x,y,z) x
#endif
#ifdef STRCASESTR
#define _STR_CASESTR_MEM(x,y,z) y
#endif
#ifdef MEMMEM
#define _STR_CASESTR_MEM(x,y,z) z
#endif

#define CHAR(x) _STR_CASESTR_MEM(*(x),\
TOLOWER(*(x)),\
*(x))

#ifndef FOUND
  #define FOUND(x) return x
#endif


static inline size_t memcmp_cnt(uchar *a,uchar *b,size_t no)
{
  size_t i,j;
  tp_vector va,vb;
  tp_mask mask;
  for(i=0;i<no;i++) if(CHAR(a+i)!=CHAR(b+i)) return i;
  return no;
}

/* Two way algorithm: CROCHEMORE M., PERRIN D., 1991,
 Two-way string-matching, Journal of the ACM 38(3):651-675.

  Two modifications are done to improve practical performance, 
  First is to 
*/

static void two_way_preprocessing(uchar *n,size_t ns,size_t *per2,size_t *ell2);
static uchar *strstr_two_way(uchar *s, uchar *s_end, uchar *n, size_t ns)
{
  size_t ell,   per;
  two_way_preprocessing(n,ns,&per,&ell);
  size_t fw,bw;

  while(1) {
    uchar *p=strchr(s+ell,n[ell]);
    if (!p) return NULL;
    s = p - ell;
    fw = memcmp_cnt(n+ell,s+ell,ns-ell);
    if (fw==ns-ell) {
      bw = memcmp_cnt(n,s,ell);
      if (bw == ell){
        FOUND(s);
      }
      s+=per;
    } else {
      s+=fw+1;
      
    }
      if (_STR_CASESTR_MEM(!s[ell],!s[ell],s+ns>s_end)) 
        return NULL;
  }
}



static uchar *strstr_vec(uchar *s,uchar *s_end,uchar *n,size_t ns)
{
  /*First find occurences last two characters by vector algorithm,
    then test characters before. 
    If we tested superlinear number of characters switch to 
    two way algorithm.*/
  size_t buy=(ns>>2)+16,rent=0;
  size_t check_last=_STR_CASESTR_MEM(UCHARS_IN_VECTOR,0,UCHARS_IN_VECTOR);
  /*For strcasestr we do aproximate matching, false positives can 
    happen so we need to check also last two characters.*/

  size_t check = ns - min(ns, check_last);
  s += ns-1;
  #define INIT_SO_VECTOR (s-ns+1<s2 ? LOAD(s2-UCHARS_IN_VECTOR) : vzero)
  tp_vector  __attribute__((unused)) diff=BROADCAST('A'^'a');

#define PHASE2 {\
  tp_vector vn;int i;\
  tp_vector v0=LOAD(s2-UCHARS_IN_VECTOR),v1=LOAD(s2),v2=LOAD(s2+UCHARS_IN_VECTOR),v3=LOAD(s2+2*UCHARS_IN_VECTOR),v4=LOAD(s2+3*UCHARS_IN_VECTOR);\
  v4=CONCAT(v4,v3,UCHARS_IN_VECTOR-2);v3=CONCAT(v3,v2,UCHARS_IN_VECTOR-2);v2=CONCAT(v2,v1,UCHARS_IN_VECTOR-2);v1=CONCAT(v1,v0,UCHARS_IN_VECTOR-2);v0=SHIFT_UP(v0,2);\
  for (i=2;i<ns && i<UCHARS_IN_VECTOR;i++){\
    vn=BROADCAST(n[ns-1-i]);\
    mvec0=TEST_EQ(v1,vn);mvec1=TEST_EQ(v2,vn);mvec2=TEST_EQ(v3,vn);mvec3=TEST_EQ(v4,vn);\
    mask=mask&(AGREGATE_MASK);\
    if (!mask) break;\
    v4=CONCAT(v4,v3,UCHARS_IN_VECTOR-1);v3=CONCAT(v3,v2,UCHARS_IN_VECTOR-1);v2=CONCAT(v2,v1,UCHARS_IN_VECTOR-1);v1=CONCAT(v1,v0,UCHARS_IN_VECTOR-1);v0=SHIFT_UP(v0,1);\
  }\
}

#define CASE_CONVERT(x) _STR_CASESTR_MEM(x, OR(x,diff),  x)
#define MASK_CONVERT(x) _STR_CASESTR_MEM(x, x|('A'^'a'), x)
#define LOOP_BODY(p)\
  p -= ns - 1;\
  size_t checked=memcmp_cnt(p, n, check );\
  if (checked == check)\
     FOUND(p);\
  rent+=4+(checked>>4);\
  if(buy+((p-s)>>3)<rent)\
     return strstr_two_way(p,s_end,n,ns);\

#include "strstr_vec.h"
}


/*determine length of shorter string*/
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

#ifdef STRSTR
uchar *STRSTR(const uchar *_s,const uchar *_n)
#endif
#ifdef STRCASESTR
uchar *STRCASESTR(const uchar *_s,const uchar *_n)
#endif
#ifdef MEMMEM
uchar *MEMMEM(const uchar *_s,size_t ss,const uchar *_n,size_t ns)
#endif
{
  uchar *s=(uchar *)_s,*n=(uchar *)_n;

#if defined( STRSTR) || defined(STRCASESTR)
  size_t ns,ss;
  ns = str_shorterlen((uchar *) n,(uchar *) s);
  if (n[ns]) return NULL;
#else
  if( ns > ss) return NULL;
#endif
  if (!ns) return s;
  if (ns==1) return _STR_CASESTR_MEM(strchr(s,n[0]),TODO,memchr(s,n[0],ss));
  uchar *s_end=((s+ss>=s) ? s+ss : ((uchar*)((long)-1)));
#ifdef STRCASESTR
  TOLOWER_INIT();
  if (!(TOLOWER_CASE_CHECK(n[ns-1]) || TOLOWER_CASE_CHECK(n[ns-2])))
    return strstr_two_way(s,s_end,n,ns);
#endif

  return strstr_vec(s,s_end,n,ns);
}

/*Two way preprocessing.*/
static inline size_t maxSuf(uchar *n, size_t ns, size_t *p, size_t invert)
{
int ms, j, k;
   uchar a, b;

   ms = -1;
   j = 0;
   k = *p = 1;
   while (j + k < ns) {
      a = CHAR(n + j + k);
      b = CHAR(n + ms + k);
      if (invert ? (a > b) : (a < b)) {
         j += k;
         k = 1;
         *p = j - ms;
      }
      else
         if (a == b)
            if (k != *p)
               ++k;
            else {
               j += *p;
               k = 1;
            }
         else { /* a > b */
            ms = j;
            j = ms + 1;
            k = *p = 1;
         }
   }
   return(ms+1);

}

static void two_way_preprocessing(uchar *n,size_t ns,size_t *per,size_t *ell)
{
  size_t u,v,up,vp;
  u=maxSuf(n,ns,&up,0);
  v=maxSuf(n,ns,&vp,1);
  *ell = (u > v) ? u :  v;
  *per = (u > v) ? up : vp;
  if (memcmp_cnt(n, n + *per, *ell) != *ell)
    *per = max(*ell, ns - *ell) + 1;
}
