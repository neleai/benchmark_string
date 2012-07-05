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

#define unroll 4
#define prefetch 8
#define small_treshold 128

#include "vector.h"



#ifdef AS_STRSTR
#define _AS_STR_CASESTR_MEM(x,y,z) x
#endif
#ifdef AS_STRCASESTR
#define _AS_STR_CASESTR_MEM(x,y,z) y
#endif
#ifdef AS_MEMMEM
#define _AS_STR_CASESTR_MEM(x,y,z) z
#endif
#define CHAR(x) _AS_STR_CASESTR_MEM(*(x),\
tolower_fixed[*(x)],\
*(x))

/*TODO vectorize*/
SI size_t strcmp_dir(const uchar *a,const uchar *b,size_t no,int dir)
{
  size_t i;
  for(i=0; i<no && CHAR(a)==CHAR(b); i++)
    {
      a+=dir;
      b+=dir;
    }
  return i;
}

/* Two way algorithm: CROCHEMORE M., PERRIN D., 1991,
 Two-way string-matching, Journal of the ACM 38(3):651-675.
   Implementation based from http://www-igm.univ-mlv.fr/~lecroq/string/node26.html


   We use vectorized algorithm to find occurences of fragments
   of size ns-check starting at n+check-1
   On occurence we do step of two way algorithm and
   tell finder in skip_to variable where it should resume search.
*/

static void two_way_preprocessing(uchar *n,size_t ns,size_t *per2,size_t *ell2,size_t *peri);
static uchar *strstr_two_way(uchar *s, uchar *s_end, uchar *n, size_t ns)
{
  size_t ell,   per, peri;
  two_way_preprocessing(n,ns,&per,&ell,&peri);
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
#define CASE_CONVERT(x) _AS_STR_CASESTR_MEM(x, parallel_tolower(x), x)
#define MASK_CONVERT(x) CHAR(&x)

#define LOOP_BODY(p)\
  p -= ns - 1;\
  fw = strcmp_dir(n + fw_from ,p + fw_from, fw_no , 1);\
  if (fw != fw_no )\
    {\
      p += fw + 1;\
    }\
  else\
    {\
      bw = strcmp_dir(n + bw_from - 1, p + bw_from - 1, bw_no, -1);\
      if ( bw != bw_no )\
        {\
          p += per;\
          if (peri) /*Prefix memoization see definition of peri.*/\
            {\
              if(_AS_STR_CASESTR_MEM(0,0,p+ns>s_end)) return NULL;\
              /*Zero byte in forward check causes mismatch.*/\
              fw = strcmp_dir(n + ns - per ,p + ns - per, per , 1);\
              if (fw != per )\
                {\
                  p += fw+ (ns-per-ell) + 1;\
                }\
              else\
                {\
                  /*Backward scan always succeds.*/\
                  return p;\
                }\
            }\
        }\
      else\
        {\
          return p;\
        }\
    }\
  skip_to = p + (ns - 1);

#include "strstr_vec.h"
}

#ifdef AS_STRCASESTR

#endif
static uchar *strstr_vec(uchar *s,uchar *s_end,uchar *n,size_t ns)
{
#ifdef AS_STRCASESTR
#define CASECHECK(u) (tolower_class_no[u]==1 || (tolower_class_no[u]==2 && (tolower_class[u][0]^tolower_class[u][1])==32))
  if (!(CASECHECK(n[ns-1]) || CASECHECK(n[ns-2])))
    return strstr_two_way(s,s_end,n,ns);
#undef CASECHECK
#endif
  size_t buy=8*ns+64,rent=0;
  size_t check_last=_AS_STR_CASESTR_MEM(2,0,2);
  tp_mask   phase2mask=0;
  uchar phase2n[BYTES_AT_ONCE];
  int ii;
  for (ii=0; ii<min(ns-check_last,BYTES_AT_ONCE); ii++)
    {
      phase2n[BYTES_AT_ONCE-1-ii]=CHAR(n+ns-1-check_last-ii);
      phase2mask|=bit_i(BYTES_AT_ONCE-1-ii);
    }
  tp_vector phase2v=LOAD_UNALIGNED(phase2n);
#define PHASE2_CONVERT(x) _AS_STR_CASESTR_MEM(x, parallel_tolower(x), x)
  /*TODO use pcmpistrm to possibly kill next 15 positions*/
#define PHASE2TEST ((get_mask(TEST_EQ(\
        PHASE2_CONVERT(LOAD_UNALIGNED(\
                       p+ns-check_last-BYTES_AT_ONCE)),\
        phase2v))&phase2mask)==phase2mask)
  size_t check = ns - min(ns, BYTES_AT_ONCE+check_last);
  s += ns-2;
  tp_vector UNUSED diff=BROADCAST('A'^'a');
#define CASE_CONVERT(x) _AS_STR_CASESTR_MEM(x, OR(x,diff),  x)
#define MASK_CONVERT(x) _AS_STR_CASESTR_MEM(x, x|('A'^'a'), x)
#define LOOP_BODY(p)\
  p -= ns - 1;\
  if(PHASE2TEST){\
     size_t checked=strcmp_dir(p + check - 1,n + check - 1,check , -1);\
     if (checked == check)\
        return p;\
     rent+=checked;\
     if(buy+2*(p-s)<rent)\
        return strstr_two_way(p,s_end,n,ns);\
  }

#include "strstr_vec.h"
}



#ifdef AS_STRSTR
uchar *STRSTR(const uchar *s,const uchar *n)
#endif
#ifdef AS_STRCASESTR
uchar *STRCASESTR(const uchar *s,const uchar *n)
#endif
#ifdef AS_MEMMEM
uchar *MEMMEM(const uchar *s,size_t ss,const uchar *n,size_t ns)
#endif
{
#ifdef AS_STRCASESTR
  if(!calc_tolower_class) calc_tolower_cls(); /*TODO recalculate when locale changes. */
#endif
  size_t buy=small_treshold,rent=0;
  uchar *p=(uchar*)s;
#if defined( AS_STRSTR) || defined(AS_STRCASESTR)
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
  size_t check=ns-_AS_STR_CASESTR_MEM(1,0,1);
  size_t page_offset= ((size_t)s)%4096;
  p += check;
  while(1)
    {
#define STRCHR(s,sn,c) _AS_STR_CASESTR_MEM( strchr((char*)s,c),\
                                            (*(s-1) ? s : NULL),\
                                            memchr((void*)s,c,sn))
      /*strpbrk(s,tolower_class[(uchar) c]) is too slow -cca 100 cycles.*/
      p=(uchar*) STRCHR(p,s_end-p,((char*)n)[ns-1]);
      if(!p) return NULL;
      p -= check;
      size_t checked = strcmp_dir(n, p, check, 1);
      if (checked == check) return p;
      rent += check + 32;
      /*next implementation is faster but has large startup cost*/
      if(buy < rent + (p - s) &&
          p >= s - page_offset +BYTES_AT_ONCE)
        {
          /*Next implementations need two invariants.
            First  is that string started before position that is passed.
            Second is that p - BYTES_AT_ONCE is valid memory*/
          return strstr_vec((uchar*)p+1,s_end,(uchar*)n,ns);
        }
      p++;
      p += check;
    }
}

/*Two way preprocessing.*/
SI size_t maxSuf(uchar *n, size_t ns, size_t *per, size_t invert)
{
  /*Note that per+ms+1<ns.*/
  size_t p,ms, j, k;
  uchar a, b;

  ms = 0;
  j  = 1;
  k  = p = 0;
  while (j + k < ns)
    {
      a = CHAR(n + j +  k);
      b = CHAR(n + ms + k);
      if (invert ? (a > b) : (a < b))
        {
          j += k;
          k = 0;
          p = j - ms;
          j++;
        }
      else if (a == b)
        {
          if (k == p)
            {
              j += k;
              k = 0;
              j++;
            }
          else
            {
              k++;
            }
        }
      else   /* invert ? a < b : a > b*/
        {
          ms = j;
          j++;
          k = p = 0;
        }
    }
  *per =(p+1);
  return ms;
}

SI size_t periodic(uchar *a,uchar *b,size_t siz)
{
  return strcmp_dir(a,b,siz,1)==siz;
}

static void two_way_preprocessing(uchar *n,size_t ns,size_t *per2,size_t *ell2,size_t *peri)
{
  size_t u,v,up,vp;
  size_t per,ell;
  u=maxSuf(n,ns,&up,0);
  v=maxSuf(n,ns,&vp,1);
  ell = (u > v) ? u :  v;
  per = (u > v) ? up : vp;
  *peri = periodic(n, n + per, ell);
  if (!*peri)
    per = max(ell, ns - ell) + 1;
  *per2=per;
  *ell2=ell;
}
