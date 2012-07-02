#ifdef DETECT_ZERO_BYTE
  #define _DETECT_ZERO_BYTE mvec= OR(mvec,TEST_ZERO(sn));
  #define _TEST_ZERO_BYTE (*p==0)
#else
  #define _DETECT_ZERO_BYTE 
  #define _TEST_ZERO_BYTE 0 
#endif
#ifdef DETECT_END
  #define _DETECT_END(u) if (DETECT_END<=s2+u*BYTES_AT_ONCE) mask |= ((tp_mask)1)<<(DETECT_END-s2);
  #define _TEST_END (p==DETECT_END)
#else
  #define _DETECT_END(u)
  #define _TEST_END 0
#endif

   #define TEST(u) \
     mvec=vzero;\
     so=sn;\
     sn=LOAD(s2+u*16);\
     mvec    = TEST_CODE(so,sn); \
     _DETECT_ZERO_BYTE;\
     mvec##u = mvec;

   int i,j;
   tp_vector vzero=BROADCAST_ZERO();
   tp_vector sn,so;
   int s_offset; uchar* s2;
   sn=vzero;
   ALIGN(s,4);
   tp_mask forget_offset=((tp_mask)-1)<<s_offset;
   tp_vector mvec; tp_vector mvec0,mvec1,mvec2,mvec3;
   tp_mask mask,mask0,mask1,mask2,mask3;
   
   TEST(0);
   mask0=get_mask(mvec0);
   TEST(1);
   mask1=get_mask(mvec1);
   TEST(2);
   mask2=get_mask(mvec2);
   TEST(3);
   mask3=get_mask(mvec3);
   mask =(mask0|(mask1<<16))|((mask2|(mask3<<16))<<32);
  //or-ing in this way minimizes data dependencies

   _DETECT_END(4);
   mask=mask&forget_offset;
   if (mask) goto test;
   start:;
   while(1){
     s2+=64;
     PREFETCH(s2+512);
     TEST(0);
     TEST(1);
     TEST(2);
     TEST(3);
     mask=0;
     _DETECT_END(4);
     if(get_mask(OR(OR(mvec0,mvec1),OR(mvec2,mvec3)))|mask){
       // on x64 or is destructive operation
       // in case of strlen it is faster to recalculate mvec0,mvec1 than move them to separate registers.
       mask0=get_mask(mvec0);
       mask1=get_mask(mvec1);
       mask2=get_mask(mvec2);
       mask3=get_mask(mvec3);
       mask =(mask0|(mask1<<16))|((mask2|(mask3<<16))<<32);
       _DETECT_END(4);
       goto test;
     }
   }
   test:;
      enum_bits_start(mask,i)
         uchar *p=s2+i;
         if(__builtin_expect(_TEST_ZERO_BYTE||_TEST_END,0)){
           LOOP_END(p)
         }
#ifdef CAN_SKIP
         if(p>=skip_to){
           LOOP_BODY(p)
         }
#else
          LOOP_BODY(p)
#endif
       enum_bits_end
   #endif
   goto start;
