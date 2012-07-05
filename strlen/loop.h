#ifdef DETECT_ZERO_BYTE
  #define _DETECT_ZERO_BYTE mvec= OR(mvec,TEST_ZERO(sz));
  #define _TEST_ZERO_BYTE (*p==0)
#else
  #define _DETECT_ZERO_BYTE 
  #define _TEST_ZERO_BYTE 0 
#endif
#ifdef DETECT_END
  #define _DETECT_END(u) (DETECT_END<=s2+u*BYTES_AT_ONCE)
#else
  #define _DETECT_END(u) 0
#endif


   #define TEST(u) \
     mvec=vzero;\
     so=sn;\
     sn=sz=LOAD(s2+u*BYTES_AT_ONCE);\
     mvec    = TEST_CODE(so,sn); \
     _DETECT_ZERO_BYTE;\
     mvec##u = mvec;


   int i;
   tp_vector vzero=BROADCAST_ZERO();
   tp_vector sn,so,sz;
   int s_offset; uchar* s2;
   sn=vzero;
   ALIGN(s,unroll);
   tp_vector mvec; tp_vector mvec0,mvec1,mvec2,mvec3;
   tp_mask mask,mask0,mask1,mask2,mask3,mask_tmp;
#ifdef FAST_START
    ALIGN(s,1);
    TEST(0);
    mask0=get_mask(mvec0);
    mask0=forget_before(mask0,s_offset);
    TEST(1);
    TEST(2);
    TEST(3);
    mask1=get_mask(mvec1);
    mask2=get_mask(mvec2);
    mask3=get_mask(mvec3);
    mask=AGREGATE_MASK;
    if (mask) goto test;
    ALIGN(s2,unroll);
#else
  #undef ACTION
  #define ACTION(x) TEST(x)
   DO_ACTION;
  #undef ACTION
  #define ACTION(x) mask##x=get_mask(mvec##x);
   DO_ACTION;
   mask=AGREGATE_MASK;
   mask=forget_before(mask,s_offset);
#endif
   start:;
   while(1){
     s2+=PARA;
     PREFETCH(s2+prefetch*CACHE_LINE_SIZE);
    #undef ACTION
    #define ACTION(x) TEST(x)
     DO_ACTION;

     if(NONZERO_MASK(AGREGATE_VECTOR)||_DETECT_END(unroll)){
       /* on x64 or is destructive operation
          in case of strlen it is faster to recalculate 
          mvec0,mvec2 than move them to separate registers.*/
      #undef ACTION
      #define ACTION(x) mask##x=get_mask(mvec##x);
       DO_ACTION;
       mask=AGREGATE_MASK;
       goto test;
     }
   }
   test:; /*we need this flow otherwise gcc would duplicate this fragment.*/
   int end=0;
#ifdef CAN_SKIP
   /* detect zero byte so it cannot be skipped.*/
#ifdef DETECT_ZERO_BYTE
    #define ZTEST(u) \
     sz=LOAD(s2+u*BYTES_AT_ONCE);\
     mvec=vzero;\
     _DETECT_ZERO_BYTE;\
     mvec##u=mvec;

     #define ACTION(x) ZTEST(x)
     DO_ACTION;
     mask_tmp=mask;
     AGREGATE_MASK;
     if(mask) end = first_bit(mask)+1;
     mask=mask_tmp;
#endif
     mask=forget_before(mask,skip_to-s2);
#endif
     if (end){
      mask=forget_after(mask,end-1);
     }
     i=0;
     while(mask){ i=first_bit(mask,i);
        uchar *p=s2+i;
        if(__builtin_expect(_TEST_ZERO_BYTE,0)){
          LOOP_END(p)
        }
        LOOP_BODY(p)
#ifdef CAN_SKIP
        mask=forget_before(mask,skip_to-s2);
#else
        mask=forget_first_bit(mask,i);
#endif
     }
     if(end){
       uchar *p=s2+end-1;
       LOOP_END(p);
     }

   goto start;


#undef CAN_SKIP

#undef TEST_CODE
#undef LOOP_BODY
