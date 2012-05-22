/* generated from expression

_strstr(n,c1,c2,size) = char(c1) char(c2) {MATCH_REST}
                     | '\000' {return NULL;}

*/

#ifdef SSE2
#include "sse2.h"
#define STRSTR strstr_sse2
#elif AVX2
#include "avx2.h"
#define STRSTR strstr_avx2
#else
#include "arithmetic.h"
#define STRSTR strstr_arithmetic
#endif

#include <string.h>
#include "strstr_hash.h"
#define MATCH_REST int j;for(j=2;n[j] && n[j]==p[j];j++); \
if (!n[j]) return p; \
size+=j; \
if ((long) size>1*(p-s)) return strstr_hash(p, strlen(p), n, strlen(n));

static inline char * _strstr(char *s ,char *n,char *c1,char *c2,char *size ) {
    int i;
    char *p;
    MBTYPE e0;
    MBTYPE e1;
    MBTYPE e2;
    MBTYPE e3;
    MBTYPE e4;
    MBTYPE e5;
    MBTYPE e6;
    MBTYPE e7;
    MBTYPE m0=make_mask((char) c1,0);
    MBTYPE m1=make_mask((char) c2,1);
    MBTYPE m2=make_mask(0,0);
    char *s2=s;
    int offset=((long)(s))%BYTES_AT_ONCE;
    s2-=offset;
    MBTYPE eo=LOAD(s2);
    e0=test_eq(eo, m0);
    e1=shift_down(eo,1);
    e2=test_eq(e1, m1);

    e4=AND(e0,e2);
    e5=test_eq(eo, m2);

    e7=OR(e4,e5);
    MASKTYPE mask=get_mask(e7);
    mask=forget_bits(mask,offset);
    while (1) {
        if(mask) {
            for(i=0; i<BYTES_AT_ONCE-1; i++) if (GET_BIT(mask,i)) {
                    if (GET_BIT(get_mask(e4),i)) {
                        p=s2+i;
                        MATCH_REST
                    }
                    if (GET_BIT(get_mask(e5),i)) {
                        p=s2+i;
                        return NULL;
                    }

                }
            if (GET_BIT(mask,i)) {
                    if (GET_BIT(get_mask(e4),i)&& s2[i+1]==c2) {
                        p=s2+i;
                        MATCH_REST
                    }
                    if (GET_BIT(get_mask(e5),i)) {
                        p=s2+i;
                        return NULL;
                    }
            }

        }
        s2+=BYTES_AT_ONCE;
        eo=LOAD(s2);
        e0=test_eq(eo, m0);
        e1=shift_down(eo,1);
        e2=test_eq(e1, m1);

        e4=AND(e0,e2);
        e5=test_eq(eo, m2);

        e7=OR(e4,e5);
        mask=get_mask(e7);
    }
}
char *strstr2(char *s,char *n) {
    int i;
    if(!n[0])return s;
    s=strchr(s,n[0]);
    if(!s) return NULL;
    for(i=1; n[i] && n[i]==s[i]; i++);
    if (!n[i]) return s;
    if (!s[i]) return NULL;
    return _strstr(s,n,(char *)n[0],(char *)n[1],-32);
}
