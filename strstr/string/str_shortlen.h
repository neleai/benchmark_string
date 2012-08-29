/*min(strlen(a),strlen(b)) in time proportional to smaller string.*/
static inline size_t str_shorterlen(uchar *a,uchar *b){
  #ifdef SLOW_LOAD_UNALINGED
    return WNAME(nlen)(a,WNAME(len)(b));
  #endif
  tp_vector va,vb; tp_mask mask;
  int i,no=0;
  while(1){
    if (__builtin_expect(((size_t) (a+no))%4096>=4096-sizeof(tp_vector)||((size_t) (b+no))%4096>=4096-sizeof(tp_vector),0)){
      for (i=0;i<UCHARS_IN_VECTOR;i++) if (!a[i+no]||!b[i+no]) return i+no;
    }else {
      va=LOAD_UNALIGNED(a+no);  vb=LOAD_UNALIGNED(b+no);
      mask = get_mask(TEST_ZERO(MINI(va,vb)));
      if (mask) return no+first_bit(mask,0);
    }
    no+=UCHARS_IN_VECTOR;
  }
}

/* Inline expansion of strlen when string is typicaly at most 16 byte long. */
static inline size_t str_shorter(uchar *a){
  #ifdef SLOW_LOAD_UNALINGED
    return WNAME(len)(a);
  #endif
  tp_vector va,vb; tp_mask mask;
  int i,no=0;
  if (__builtin_expect(((size_t) (a))%4096<=4096-sizeof(tp_vector),0)){
    va=LOAD_UNALIGNED(a);  
    mask = get_ZERO(va);
    if (mask) return first_bit(mask,0);
  } 
  return WNAME(len)(a+UCHARS_IN_VECTOR)+UCHARS_IN_VECTOR;
}

