#define FNAME "/home/wizard/libc_profile"

#define TOP_FUNCTIONS 10

 typedef struct {
  uint64_t less16;
 uint64_t cnt[2][100];
 uint64_t time[2][100];
 uint64_t needle[2][100];
	uint64_t delay[64];
 uint64_t aligns[64];
 uint64_t success,fail;
 uint64_t start,last;
} prof_str;
typedef struct {
  uint64_t calls;
  char name[48];
} binary_names;

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

uint64_t b_strlen=0,
        b_strchr=0,
        b_strstr=B_NEEDLE,
        b_memchr=0,
        b_strspn=B_NEEDLE,
        b_strcat=B_NEEDLE,
        b_strcpy=B_REL_ALIGN | B_SHOW_ALIGN,
        b_memcpy=B_REL_ALIGN | B_SHOW_ALIGN,
        b_strcmp=B_REL_ALIGN | B_SHOW_ALIGN ,
        b_strcasecmp=B_REL_ALIGN | B_SHOW_ALIGN ,
        b_strverscmp=B_REL_ALIGN | B_SHOW_ALIGN ,

        b_strdup=0,
        b_strrchr=0,
        b_bsearch=0,b_lsearch=0,
        b_memset=0,
        b_strtol=B_BYTEWISE_SIZE,
        b_malloc=B_BYTEWISE_SIZE,
        b_qsort=B_BYTEWISE_SIZE,
        b_rand=B_DELAY_ONLY,
        b_asin=B_DELAY_ONLY,
        b_sin=B_DELAY_ONLY,
        b_sin2=B_DELAY_ONLY,
        b_sin3=B_DELAY_ONLY,
        b_erf=B_DELAY_ONLY,
        b_pow=B_DELAY_ONLY,
        b_bessel=B_DELAY_ONLY,
        b_sinh=B_DELAY_ONLY;

