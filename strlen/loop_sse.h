#ifdef DETECT_ZERO_BYTE
  #define _DETECT_ZERO_BYTE mvec= OR(mvec,TEST_ZERO(sz));
  #define _TEST_ZERO_BYTE (*p==0)
#else
  #define _DETECT_ZERO_BYTE 
  #define _TEST_ZERO_BYTE 0 
#endif
#ifdef DETECT_END
  #define _DETECT_END(u) if (DETECT_END<=s2+u*BYTES_AT_ONCE) zmask |= ((tp_mask)1)<<(DETECT_END-s2);
  #define _TEST_END (p==DETECT_END)
#else
  #define _DETECT_END(u)
  #define _TEST_END 0
#endif

   #define TEST(u) \
     mvec=vzero;\
     so=sn;\
     sn=sz=LOAD(s2+u*16);\
     mvec    = TEST_CODE(so,sn); \
     _DETECT_ZERO_BYTE;\
     mvec##u = mvec;



   int i;
   tp_vector vzero=BROADCAST_ZERO();
   tp_vector sn,so,sz;
   int s_offset; uchar* s2;
   sn=vzero;
   ALIGN(s,4);
   tp_mask forget_offset=((tp_mask)-1)<<s_offset;
   tp_vector mvec; tp_vector mvec0,mvec1,mvec2,mvec3;
   tp_mask mask,mask0,mask1,mask2,mask3,zmask;
   
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
   zmask=0;
   _DETECT_END(4);
   mask|=zmask;
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
     if(NONZERO_MASK(OR(OR(mvec0,mvec1),OR(mvec2,mvec3)))|mask){
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
#ifdef CAN_SKIP
     zmask=0;
#ifdef DETECT_ZERO_BYTE
    #define ZTEST(u) \
     sz=LOAD(s2+u*16);\
     mvec=vzero;\
     _DETECT_ZERO_BYTE;\
     zmask |= get_mask(mvec)<<(u*BYTES_AT_ONCE);
     ZTEST(0);ZTEST(1);ZTEST(2);ZTEST(3);
#endif
     _DETECT_END(4);
     if(zmask){
       mask&=(((tp_mask)-1)>>(63-first_bit(zmask)))>>1;
     }
     if(skip_to-s2>=64){ 
       mask=0;
     } else if (skip_to-s2>=0){
       mask&=((tp_mask)-1)<<(skip_to-s2);
     }
     while(mask){ i=first_bit(mask);
        uchar *p=s2+i;
        LOOP_BODY(p);
         if(skip_to-s2>=64){
          mask=0;
        } else if (skip_to-s2>=0){
          mask&=((tp_mask)-1)<<(skip_to-s2);
        }
     }
     if(zmask){
       uchar *p=s2+first_bit(zmask);
       LOOP_END(p);
     }
#else
     while(mask){ i=first_bit(mask);
        uchar *p=s2+i;
        if(__builtin_expect(_TEST_ZERO_BYTE||_TEST_END,0)){
          LOOP_END(p)
        }
        LOOP_BODY(p)
        mask=forget_first_bit(mask);
      }
#endif

   goto start;


#undef CAN_SKIP

#undef TEST_CODE
#undef LOOP_BODY
