
#define TOP_FUNCTIONS 10

 typedef struct {
  uint64_t less16;
 uint64_t cnt[3][34];
 uint64_t time[3][34];
 uint64_t needle[3][34];
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
        b_strcpy=B_SHOW_ALIGN,
        b_memcpy=B_SHOW_ALIGN,
        b_strcat=B_NEEDLE,
        b_strspn=B_NEEDLE,
        b_strcmp=B_REL_ALIGN | B_SHOW_ALIGN ,
        b_strcasecmp=B_REL_ALIGN | B_SHOW_ALIGN ,
        b_strverscmp=B_REL_ALIGN | B_SHOW_ALIGN ,

        b_strdup=0,
        b_strrchr=0,
        b_bsearch=0,b_lsearch=0,
        b_memset=0,
        b_strtol=0,
        b_malloc=0,
        b_qsort=B_BYTEWISE_SIZE,
        b_rand=B_DELAY_ONLY;

