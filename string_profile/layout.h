 typedef struct {
 uint64_t cnt[3][34];
 uint64_t time[3][34];
 uint64_t needle[3][34];
	uint64_t delay[64];
 uint64_t aligns[64];
 uint64_t success,fail;
 uint64_t start,last;
} prof_str;


typedef struct {
	prof_str strlen,strchr,strcmp,strstr,memchr,strcpy,memcpy,strcat,strspn,strcasecmp,strdup,strrchr;

} disk_layout;

