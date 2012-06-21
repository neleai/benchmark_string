#ifdef NVERSION
	#define ND(x) char *x,int x##s
	#define NU(x) x,x##s
	#define N(x) strn##x
	#define N_LIMIT(x,y) ((y+y##s-x>=0) ? BIT(y+y##s-x) : 0)
#else
	#define ND(x) char *x
	#define NU(x) x
	#define N(x) str##x
	#define N_LIMIT(x,y) 0
#endif
