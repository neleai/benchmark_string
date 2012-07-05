#define unroll 4
#define prefetch 8

#include "vector.h"

#ifdef AS_STRLEN
size_t STRLEN(uchar *s)
#endif
#ifdef AS_STRNLEN
size_t STRNLEN(uchar *s,size_t ss)
#define DETECT_END s+ss
#endif
{
  #define DETECT_ZERO_BYTE
  #define TEST_CODE(so,sn) vzero
  #define LOOP_BODY(p) return p-s;
  #define LOOP_END(p)  /*empty*/

  #include "loop.h"
}
