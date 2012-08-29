/**/


#define prefetch 8

#define CHAR(x) _STR_CASESTR_MEM(*(x),TOLOWER(*(x)),*(x))

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

#include "string/str_twoway.h"
static uchar *strstr_vec(    uchar *s, uchar *s_end, uchar *n, size_t ns);


#include "string/str_shortlen.h"

#ifdef STRSTR
uchar *STRSTR(const uchar *_s,const uchar *_n)
#endif
#ifdef STRCASESTR
uchar *STRCASESTR(const uchar *_s,const uchar *_n)
#endif
#ifdef MEMMEM
uchar *MEMMEM(const void *_s,size_t ss,const void *_n,size_t ns)
#endif
{
  uchar *s=(uchar *)_s,*n=(uchar *)_n;

#if defined( STRSTR) || defined(STRCASESTR)
  size_t ns,ss;
  uchar *s_end=NULL;
  ns = str_shorterlen((uchar *) n,(uchar *) s);
  if (n[ns]) return NULL;
#else
  S_END;
  if( ns > ss) return NULL;
#endif
#ifdef STRCASESTR
  TOLOWER_INIT();
  if ((UCHARS_IN_VECTOR<4) || !(TOLOWER_CASE_CHECK(n[ns-1]) || TOLOWER_CASE_CHECK(n[ns-2])))
    return strstr_two_way(s,s_end,n,ns);
#endif
  if (!ns)   return s;
  if (ns==1) return _STR_CASESTR_MEM(strchr(s,n[0]),strstr_two_way(s,s_end,n,ns),memchr(s,n[0],ss));
  return strstr_vec(s,s_end,n,ns);
}








#define LOAD_P2(x) _STR_CASESTR_MEM(LOAD(x) , PARALLEL_TOLOWER(LOAD(x)), LOAD(x))


#ifdef ZERO_VARIANT
  #define PHASE2_TEST(u) mvec##u=OR(mvec##u,XOR(v##u,vn));
#else 
  #define PHASE2_TEST(u) mvec##u=AND(mvec##u,TEST_EQ(v##u,vn));
#endif
#define PHASE2_SHORT \
  int i;\
  tp_vector sno;\
  if(NONZERO_MVECS){\
  sno=((s_start<s2) ? LOAD_P2(s2-UCHARS_IN_VECTOR) : BROADCAST(0));\
  sn0=CONCAT(sn0,sno,UCHARS_IN_VECTOR-2);sno=SHIFT_UP(sno,2);\
  for (i=2; i<ns && i<UCHARS_IN_VECTOR;i++){\
    vn=BROADCAST(CHAR(n+ns-1-i));\
    PHASE2_TEST(0);\
    if(!NONZERO_MVECS) break;\
    sn0=CONCAT(sn0,sno,UCHARS_IN_VECTOR-1);sno=SHIFT_UP(sno,1);\
  }\
  }\
}

#define PHASE2 {\
  int i;\
  tp_vector sno;\
  if(NONZERO_MVECS){\
  sno=((s_start<s2) ? LOAD_P2(s2-UCHARS_IN_VECTOR) : BROADCAST(0));\
  sn3=CONCAT(sn3,sn2,UCHARS_IN_VECTOR-2);sn2=CONCAT(sn2,sn1,UCHARS_IN_VECTOR-2);sn1=CONCAT(sn1,sn0,UCHARS_IN_VECTOR-2);sn0=CONCAT(sn0,sno,UCHARS_IN_VECTOR-2);sno=SHIFT_UP(sno,2);\
  for (i=2; i<ns && i<UCHARS_IN_VECTOR;i++){\
    vn=BROADCAST(CHAR(n+ns-1-i));\
    PHASE2_TEST(0);PHASE2_TEST(1);PHASE2_TEST(2);PHASE2_TEST(3);\
    if(!NONZERO_MVECS) break;\
    sn3=CONCAT(sn3,sn2,UCHARS_IN_VECTOR-1);sn2=CONCAT(sn2,sn1,UCHARS_IN_VECTOR-1);sn1=CONCAT(sn1,sn0,UCHARS_IN_VECTOR-1);sn0=CONCAT(sn0,sno,UCHARS_IN_VECTOR-1);sno=SHIFT_UP(sno,1);\
  }\
  }\
}


#define STR_MATCH(p)\
  p -= ns - 1;\
  size_t checked=memcmp_cnt(p, n, check );\
  if (checked == check)\
     FOUND(p);\
  rent+=(checked>>4);\
  if(buy+((p-s)>>3)<rent)\
     return strstr_two_way(p,s_end,n,ns);

#define S_START s_start
uchar *strstr_vec(uchar *s,uchar *s_end,uchar *n, uchar ns){  
  uchar *s_start=s;
  s+=ns-1;
  tp_vector vn0=BROADCAST(CHAR(n+ns-1)),vn1=BROADCAST(CHAR(n+ns-2));
  #include "loop.h"
}


