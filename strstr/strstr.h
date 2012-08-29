#include "vector.h" 
#define LOOP_BODY(p) STR_MATCH(p)
#define LOOP_END(p)  return NULL;
#define DETECT_ZERO_BYTE
#define S_END
#define S_ARG
 
    #define LOOP_TEST(so,sn) AND(TEST_EQ(sn,vn0),TEST_EQ(CONCAT(sn,so,UCHARS_IN_VECTOR-1),vn1))
    #define LOOP_TEST_ZERO(so,sn) OR(XOR(sn,vn0),XOR(CONCAT(sn,so,UCHARS_IN_VECTOR-1),vn1))

    #define _STR_CASESTR_MEM(x,y,z) x
#include "strstr_common.h"
  
