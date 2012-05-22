/* generated from expression

MEMMEM(n,nsize,end,c1,c2,size) = atr_ptr(end) {return NULL;}
                               | char(c1) char(c2) { MATCH_REST }


*/
#define SSE2
#ifdef SSE2
#include "sse2.h"
#define MEMMEM memmem_sse2
#elif AVX2
#include "avx2.h"
#define MEMMEM memmem_avx2
#else
#include "arithmetic.h"
#define MEMMEM memmem_arithmetic
#endif

#include <string.h>
#include "strstr_hash.h"
#define MATCH_REST int j;for(j=1;j<nsize && n[j]==p[j];j++); \
if (j==nsize) return p; \
size+=j; \
if ((long) size>4*(p-s)) return strstr_hash(p, end-p , n, nsize);

static inline char * MEMMEM(char *s ,char *n,char *nsize,char *end,char *c1,char *c2,char *size ) {
    int i;
    char *p;
    MBTYPE e0;
    MBTYPE e1;
    MBTYPE e2;
    MBTYPE e3;
    MBTYPE e4;
    MBTYPE e5;
    MBTYPE m0=make_mask((char) c1,0);
    MBTYPE m1=make_mask((char) c2,1);
    char *s2=s;
    int offset=((long)(s))%BYTES_AT_ONCE;
    s2-=offset;
    MBTYPE eo=LOAD(s2);
    e0=test_eq(eo, m0);
    e1=shift_down(eo,1);
    e2=test_eq(e1, m1);

    e4=AND(e0,e2);
    e5=OR(e,e4);
    MASKTYPE mask=get_mask(e5);
    mask=forget_bits(mask,offset);
    while (1) {
        if(mask) {
            for(i=0; i<BYTES_AT_ONCE; i++) if (GET_BIT(mask,i)) {
                    if (GET_BIT(get_mask(e4),i)) {
                        p=s2+i;
                        MATCH_REST
                    }

                }
        }
        s2+=BYTES_AT_ONCE;
        eo=LOAD(s2);
        e0=test_eq(eo, m0);
        e1=shift_down(eo,1);
        e2=test_eq(e1, m1);

        e4=AND(e0,e2);
        e5=OR(e,e4);
        mask=get_mask(e5);
    }
}
char *memmem2(s,s_len,n,n_len) {
    if (!n[0]) return s;
    if (!n[1]) return strstr_hash(s,s_len,n,1);

    return MEMMEM(s,n,n_len,n[0],n[1],-16);
}
