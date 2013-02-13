
#define TOP_FUNCTIONS 10

 typedef uint64_t profile_array[4][2][100];
 typedef struct {
  uint64_t less16;
	profile_array byte_cnt,byte_time,block_cnt,block_time;
 uint64_t needle[2][100];
	uint64_t delay[64];
 uint64_t aligns[64];
 uint64_t success,fail;
 uint64_t start,last;
  uint64_t extra[4];
  uint64_t call_sites;
} prof_str;
typedef struct {
  uint64_t calls;
  char name[48];
} binary_names;

typedef struct {
  void 
  #define FN(f) *f[100],
  #include "functions.h"
*placeholder;
} call_sites_s;
call_sites_s call_sites;

typedef struct {
	prof_str 
  #define FN(f) f ,
#include "functions.h"
placeholder;

} disk_layout;
typedef struct {
	binary_names 
  #define FN(f) f[TOP_FUNCTIONS] ,
#include "functions.h"
placeholder;

} disk_layout2;


#define B_NEEDLE 1
#define B_REL_ALIGN 2
#define B_SHOW_ALIGN 4
#define B_BYTEWISE_SIZE 8
#define B_DELAY_ONLY 16

uint64_t b_function = 0;
