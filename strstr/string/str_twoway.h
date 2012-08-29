/* Two way algorithm: CROCHEMORE M., PERRIN D., 1991,
 [1] Two-way string-matching, Journal of the ACM 38(3):651-675.*/

/*Two way preprocessing. Identical to [1] except indexing from 0.*/
static inline size_t maximal_suffix(uchar *n, size_t ns, size_t *per, size_t invert)
{
   int i=0, j=1, k=1, p=1;
   while (j + k < ns) {
      uchar a, b, tmp;
      a = CHAR(n-1 + i + k);  b = CHAR(n-1 + j + k);
      if (invert){ tmp = a; a = b; b = tmp; }
      if ((a > b)) { j += k; k = 1; p = j - i;}
      else if (a == b)
        if (k == p) {j+=p; k=1;} else k++;      
      else {  i = j; j = i + 1; k = p = 1; }
   }
   *per=p;
   return i;
}

static __attribute__((noinline)) void two_way_preprocessing(uchar *n,size_t ns,size_t *per,size_t *ell)
{
  size_t l1,l2,p1,p2;
  l1=maximal_suffix(n,ns,&p1,0);
  l2=maximal_suffix(n,ns,&p2,1);
  if   (l1 >= l2) { *ell = l1; *per = p1;}
  else            { *ell = l2; *per = p2;}
  if (memcmp_cnt(n, n + *per, *ell) != *ell)
    *per = max(*ell, ns - *ell) + 1;
}

/*  Two modifications are done to improve practical performance, 
  First is to defer prefix memoization only when entire string was matched.
  Second is to match backward step forward.
  This does 3n comparsions in worst case. 
  In backward phase ell<per implies that we do at most n comparsions.
  In forward phase when character is matched twice it can happen only when first forward phase succeed
  and backward phase failed. Then second forward phase succeeds and we found match or fail but after 
  characters matched in first forward phase.
*/

static __attribute__((noinline)) uchar *strstr_two_way(uchar *s, uchar *s_end, uchar *n, size_t ns)
{
  size_t ell,   per;
  two_way_preprocessing(n,ns,&per,&ell);
  size_t fw,bw;

  while(_STR_CASESTR_MEM(s[ell],s[ell],s+ns<=s_end)) {
#ifdef WIDE_VERSION
    uchar *p=wcschr(s+ell,n[ell]);
#else
    uchar *p=_STR_CASESTR_MEM(strchr(s+ell,n[ell]),s+ell,memchr(s+ell,n[ell],s_end-(s+ell)));
#endif
    if (!p) return NULL;
    s = p - ell;
    fw = memcmp_cnt(n+ell,s+ell,ns-ell);
    if (fw==ns-ell) {
      bw = memcmp_cnt(n,s,ell);
      if (bw == ell){
        FOUND(s);
      }
      s+=per;
    } else 
      s+=fw+1;
  }
  return NULL;
}

