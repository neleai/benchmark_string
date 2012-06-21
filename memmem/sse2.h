#include <stdint.h>
#include <emmintrin.h>
#include <tmmintrin.h>
#include <stdlib.h>
#define PARA (BYTES_AT_ONCE*unroll)
#define ALIGN(x) int x##_offset=((size_t) x)%PARA; char *x##2=x-x##_offset;
#define ALIGNB(x) int x##_offset=((size_t) x)%BYTES_AT_ONCE; char *x##2=x-x##_offset;

#define MBTYPE __m128i
#define MASKTYPE long
typedef MASKTYPE tp_mask;
typedef MBTYPE tp_vector;
#define SI static inline
#define BYTES_AT_ONCE sizeof(tp_vector)
SI MASKTYPE forget_bits(MASKTYPE m,int b)
{
	if (b>=8*sizeof(MASKTYPE)) return 0;
  return (m >>(b))<<(b);
}
SI MASKTYPE forget_high_bits(MASKTYPE m,int b)
{
	if (b>=8*sizeof(MASKTYPE)) return 0;
  return (m <<(8*sizeof(MASKTYPE)-b))>>(8*sizeof(MASKTYPE)-b);
}




static const uint64_t ones=0x0101010101010101;
SI MBTYPE make_mask(unsigned char c)
{
  return _mm_set1_epi8(c);
}
SI MBTYPE byte_at(unsigned char c,int shift)
{
  return _mm_set_epi64x(((uint64_t)c)<<(8*shift),((uint64_t)c)<<(8*(shift-8)));
}

#define test_eq  _mm_cmpeq_epi8
#define AND  _mm_and_si128
#define ANDNOT(x,y) _mm_andnot_si128(y,x)
#define OR   _mm_or_si128
#define XOR  _mm_xor_si128
#define shift_down _mm_srli_si128
#define shift_up   _mm_slli_si128

#ifdef SSE2_ONLY 
	#define CONCAT(x,y,n) (n==0) ? (y) : ((n==BYTES_AT_ONCE) ? (x) : OR(shift_up(x,BYTES_AT_ONCE-(n)),shift_down(y,(n))))
#else
	#define CONCAT(x,y,n) _mm_alignr_epi8(x,y,n)
#endif

SI long  get_mask(MBTYPE x)
{
  return  _mm_movemask_epi8(x);
}
#define GET_BIT(x,y) (x&(1<<(y)))

#define PREFETCH(x)	_mm_prefetch(x,_MM_HINT_NTA);
static unsigned char tolower_ary[256];
static unsigned char *casefold_equivalence_class[256];
int          casefold_equivalence_class_no[256];  
static unsigned char _casefold_equivalence_class[512];
static void calculate_tables(){int i,j;
	int chr=0;
	for(i=0;i<256;i++) tolower_ary[i]=tolower(i);
	for(i=0;i<256;i++) {
		for(j=0;j<i;j++) if (tolower(i)==tolower(j)) {
			casefold_equivalence_class[i]=casefold_equivalence_class[j];
			casefold_equivalence_class_no[i]=casefold_equivalence_class_no[j];
			goto skip;
		}
		casefold_equivalence_class[i]= &_casefold_equivalence_class[chr];	
		for(j=i;j<256;j++) if(tolower(i)==tolower(j)){
			_casefold_equivalence_class[chr++]=j;
		}
		_casefold_equivalence_class[chr++]=0;
		casefold_equivalence_class_no[i]=strlen(casefold_equivalence_class[i]);
		skip:;
	}
}
SI tp_mask kill_first(long x){	return ((tp_mask)(-1))<<x;}
SI tp_mask kill_last (long x){	return ((tp_mask)(-1))>>x;}
SI CHAR(char *a){
#ifdef CASE_INSENSITIVE
return tolower_ary[*a];
#else
return *a;
#endif
}

SI long first_bit(tp_mask t){ return __builtin_ctzl(t);}
#define find_zeros(x) get_mask(test_eq(x,vzero))

SI tp_vector test_range(tp_vector v,char from,char to){
	MBTYPE fv=make_mask(-127-from);
	v=_mm_add_epi8(v,fv);
	MBTYPE tv=make_mask(-127+to-from+1);
	return _mm_cmplt_epi8(v,tv);
}
#ifdef CASE_INSENSITIVE
SI tp_vector LOAD(char* x){tp_mask mask;
	MBTYPE high_bit=make_mask(128);
	MBTYPE m=_mm_load_si128(x);
  MBTYPE l= AND(test_range(m,'A','Z'),high_bit);
	m=OR(m,_mm_srli_epi64(l,2));
	if (get_mask(m)){int i;
		for (i=0;i<BYTES_AT_ONCE;i++){
			((unsigned char*)&m)[i]=tolower_ary[((unsigned char*)&m)[i]];
		}
	}
	return m;
}
#else
#define LOAD(x) _mm_load_si128((MBTYPE*)(x))
#define LOAD_unaligned(x) _mm_loadu_si128(x)
#endif
SI tp_vector zerov(){
	tp_vector m;
	m=XOR(m,m);
}

