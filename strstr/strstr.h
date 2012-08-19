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


static inline size_t strcmp_dir(const uchar *a,const uchar *b,size_t no)
{
  #define PAR_CMP     va=LOAD_UNALIGNED(a+i);\
                    vb=LOAD_UNALIGNED(b+i);\
                    mask=get_inv_mask(TEST_EQ(va,vb));
  #define PAR_CMP_CNT while(mask)\
                      {\
                       j=first_bit(mask,j);\
                       if(_STR_CASESTR_MEM(1,CHAR(a+i+j)!=CHAR(b+i+j),1)) return i+j;\
                       mask=forget_first_bit(mask,j);\
                      }

  size_t i,j;
  tp_vector va,vb;
  tp_mask mask;
//  for(i=0;i<no;i++) if(CHAR(a+i)!=CHAR(b+i)) return i;
  if (no< UCHARS_IN_VECTOR) {
    i= no - UCHARS_IN_VECTOR;
    PAR_CMP
    mask=forget_before(mask,UCHARS_IN_VECTOR-no);
    PAR_CMP_CNT
  } else {
    for (i=0; i+UCHARS_IN_VECTOR <no;i+=UCHARS_IN_VECTOR){
      PAR_CMP PAR_CMP_CNT
    }
    i=no-UCHARS_IN_VECTOR;
    PAR_CMP PAR_CMP_CNT
  }
  return no;
}

/* Two way algorithm: CROCHEMORE M., PERRIN D., 1991,
 Two-way string-matching, Journal of the ACM 38(3):651-675.
   Implementation based from http://www-igm.univ-mlv.fr/~lecroq/string/node26.html


   We use vectorized algorithm to find occurences of fragments
   of size ns-check starting at n+check-1
   On occurence we do step of two way algorithm and
   tell finder in skip_to variable where it should resume search.
*/

static void two_way_preprocessing(uchar *n,size_t ns,size_t *per2,size_t *ell2);
static uchar *strstr_two_way(uchar *s, uchar *s_end, uchar *n, size_t ns)
{
  size_t ell,   per;
  two_way_preprocessing(n,ns,&per,&ell);
  size_t fw,fw_no,bw,bw_no;
  size_t fw_from,fw_to,bw_from,bw_to;
  size_t check=ns-2;
  fw_from = ell;
  fw_to   = max(ell,check);
  bw_from = min(ell,check);
  bw_to   = 0;
  fw_no   = fw_to   - fw_from;
  bw_no   = bw_from - bw_to;

  uchar *skip_to=s+check;
  s+=ns-2;

#define CAN_SKIP
#define CASE_CONVERT(x) _STR_CASESTR_MEM(x, parallel_tolower(x), x)
#define MASK_CONVERT(x) CHAR(&x)

#define LOOP_BODY(p)\
  p -= ns - 1;\
  fw = strcmp_dir(n + fw_from ,p + fw_from, fw_no);\
  if (fw != fw_no )\
    {\
      p += fw + 1;\
    }\
  else\
    {\
      bw = strcmp_dir(n, p, bw_no);\
      if ( bw == bw_no ){\
         FOUND(p);\
         while(1)/*never reached unless when matching all occurences.*/\
           {\
            if (_STR_CASESTR_MEM(0,p+ns+per>s_end,0))\
              return NULL;\
            fw=strcmp_dir(p+ns,n+ns-per,per);\
            if(fw==per){\
              FOUND(p);\
              p += per;\
            } else {\
              p += fw + ns - per - ell;\
              break;\
            }\
           }\
      } else\
         p += per;\
    }\
  skip_to = p + (ns - 1);

#include "strstr_vec.h"
}

#ifdef STRCASESTR

#endif
static uchar *strstr_vec(uchar *s,uchar *s_end,uchar *n,size_t ns)
{
  /*First find occurences last two characters by vector algorithm,
    then test characters before. 
    If we tested superlinear number of characters switch to 
    two way algorithm.*/
  size_t buy=8*ns+64,rent=0;
  size_t check_last=_STR_CASESTR_MEM(2,0,2);
  /*For strcasestr we do aproximate matching, false positives can 
    happen so we need to check also last two characters.*/
#ifdef STRCASESTR
  if (!(TOLOWER_CASE_CHECK(n[ns-1]) || TOLOWER_CASE_CHECK(n[ns-2])))
    return strstr_two_way(s,s_end,n,ns);
#undef CASECHECK
#endif
  tp_mask   phase2mask=0;
  uchar phase2n[UCHARS_IN_VECTOR];
  int ii;
  for (ii=0; ii<min(ns-check_last,UCHARS_IN_VECTOR); ii++)
    {
      phase2n[UCHARS_IN_VECTOR-1-ii]=CHAR(n+ns-1-check_last-ii);
      phase2mask|=bit_i(UCHARS_IN_VECTOR-1-ii);
    }
  tp_vector phase2v=LOAD_UNALIGNED(phase2n);
  /*TODO use pcmpistrm to possibly kill next 15 positions*/

  size_t check = ns - min(ns, UCHARS_IN_VECTOR+check_last);
  s += ns-2;
  tp_vector  __attribute__((unused)) diff=BROADCAST('A'^'a');
#define CASE_CONVERT(x) _STR_CASESTR_MEM(x, OR(x,diff),  x)
#define MASK_CONVERT(x) _STR_CASESTR_MEM(x, x|('A'^'a'), x)
#define PHASE2_CONVERT(x) _STR_CASESTR_MEM(x, parallel_tolower(x), x)
#define LOOP_BODY(p)\
  p -= ns - 1;\
  /*Check characters (ns-2-UCHARS_IN_VECTOR,ns-2)*/\
  /*See preconditions for strstr_vec.*/\
  if(((get_mask(TEST_EQ(\
        PHASE2_CONVERT(LOAD_UNALIGNED(\
                       p+ns-check_last-UCHARS_IN_VECTOR)),\
        phase2v))&phase2mask)==phase2mask)){\
     size_t checked=strcmp_dir(p, n, check );\
     if (checked == check)\
       FOUND(p);\
     rent+=checked;\
     if(buy+2*(p-s)<rent)\
        return strstr_two_way(p,s_end,n,ns);\
  }

#include "strstr_vec.h"
}



#ifdef STRSTR
uchar *STRSTR(const uchar *s,const uchar *n)
#endif
#ifdef STRCASESTR
uchar *STRCASESTR(const uchar *s,const uchar *n)
#endif
#ifdef MEMMEM
uchar *MEMMEM(const uchar *s,size_t ss,const uchar *n,size_t ns)
#endif
{
  TOLOWER_INIT();
  size_t buy=small_treshold,rent=0;
  uchar *p=(uchar*)s;
#if defined( STRSTR) || defined(STRCASESTR)
  /* TODO handle case when ss<ns by searching for end of n,s in parallel.*/
  size_t ns=0,ss;
  while(n[ns])
    {
      if(!s[ns]) return NULL;
      ns++;
    }
#else
  if( ns > ss) return NULL;
#endif
  if (!ns) return (uchar*) s;
  uchar *s_end=(uchar*)((s+ss>=s) ? s+ss : ((uchar*)((long)-1)));
  /*For strstr and memmem this decreases startup cost.
    For strcasestr we align haystack.*/
  size_t check=ns-_STR_CASESTR_MEM(1,0,1);
  size_t page_offset= ((size_t)s)%4096;
  p += check;
  while(1)
    {
#define STRCHR(s,sn,c) _STR_CASESTR_MEM( strchr((char*)s,c),\
                                            (*(s-1) ? s : NULL),\
                                            memchr((void*)s,c,sn))
      /*strpbrk(s,tolower_class[(uchar) c]) is too slow -cca 100 cycles.*/
      p=(uchar*) STRCHR(p,s_end-p,((char*)n)[ns-1]);
      if(!p) return NULL;
      p -= check;
      size_t checked = strcmp_dir(n, p, check);
      if (checked == check) FOUND(p);
      rent += check + 32;
      /* Next implementation is faster but has large startup cost. 
         This is a buy or rent problem.
         http://en.wikipedia.org/wiki/Ski_rental_problem */
      if(buy < rent + (p - s) &&
          p >= s - page_offset + UCHARS_IN_VECTOR)
        {
          /*Next implementations need two invariants.
            First  is that string started before position that is passed.
            Second is that p - UCHARS_IN_VECTOR is valid memory*/
          return strstr_vec((uchar*)p+1,s_end,(uchar*)n,ns);
        }
      p++;
      p += check;
    }
}

/*Two way preprocessing.*/
static inline size_t maxSuf(uchar *n, size_t ns, size_t *per, size_t invert)
{
  /*Note that per+ms+1<ns.*/
  size_t p=0,ms=0, j=1, k;

  while (j + k < ns)
  {
    while (CHAR(n + j +  k) == CHAR(n + ms + k) &&
        j+k < ns && k < p){
      k++;
    }
    if(j+k==ns) return ns;
    if (k == p) {
      j += p;
      j++;
    } else {
      uint64_t cmp =  CHAR(n + j +  k) - CHAR(n + ms + k);
      if(invert) cmp= -cmp;
      if (cmp > 0)
      {
        j += k;
        p = j - ms;
      } else {
        ms = j;
        p = 0;
      }
      j++;
    }
  }
  *per =(p+1);
  return ms;
}

static void two_way_preprocessing(uchar *n,size_t ns,size_t *per,size_t *ell)
{
  size_t u,v,up,vp;
  u=maxSuf(n,ns,&up,0);
  v=maxSuf(n,ns,&vp,1);
  *ell = (u > v) ? u :  v;
  *per = (u > v) ? up : vp;
  if (strcmp_dir(n, n + *per, *ell) != *ell)
    *per = max(*ell, ns - *ell) + 1;
}
