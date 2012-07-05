typedef unsigned char uchar;
#include "sse2.h"

#define TEST_ZERO(x) TEST_EQ(x,vzero)
size_t strlen(uchar *s){ int i;
  uchar *s2; size_t s_offset;
  tp_vector sn;
  tp_vector vzero=BROADCAST_ZERO();
  tp_vector vmask,vmask0,vmask1,vmask2,vmask3;
  int mask;
  ALIGN(s,2);
  vmask0=TEST_ZERO(LOAD(s2));
  vmask1=TEST_ZERO(LOAD(s2+16));
  mask=get_mask(vmask0)| (get_mask(vmask1)<<16);
  mask=forget_low_bits(mask,s_offset);
  if(mask){ i=__builtin_ctz(mask);
    return s2+i-s;
  }
  s2+=32;
  if(((long) s2)&(64-1)){
    vmask0=TEST_ZERO(LOAD(s2));
    vmask1=TEST_ZERO(LOAD(s2+16));
    mask=get_mask(vmask0)| (get_mask(vmask1)<<16);
    if(mask){ i=__builtin_ctz(mask);
      return s2+i-s;
    }
    s2+=32;
  }
  while(1){
    vmask0=TEST_EQ(LOAD(s2),vzero);
    vmask1=TEST_EQ(LOAD(s2+16),vzero);
    vmask2=TEST_EQ(LOAD(s2+32),vzero);
    vmask3=TEST_EQ(LOAD(s2+48),vzero);
    vmask=OR(OR(vmask0,vmask1),OR(vmask2,vmask3));
    if (get_mask(vmask)){ 
      mask=get_mask(vmask0) | (get_mask(vmask1)<<16);
      if(mask) {  i=__builtin_ctz(mask);
        return s2+i-s;
      } else {
        mask=get_mask(vmask2) | (get_mask(vmask3)<<16);
        i=__builtin_ctz(mask);
        return s2+32+i-s;
      }
    }
    PREFETCH(s2+512);
    s2+=64;
  }
}
