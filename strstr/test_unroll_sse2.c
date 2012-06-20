/* red */
const int unroll   = 4
,         phase1   = 2
,         phase2   = 8
,         prefetch = 4
,         treshold = 512
;
int reversed(){return 1;}
#define SSE2_ONLY
#include "strstr_unroll_variable.h"

