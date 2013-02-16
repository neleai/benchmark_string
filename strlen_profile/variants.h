size_t __strlen_sse2_pminub(char *);
size_t strlen_new(char *);
size_t strlen_revised(char *);
size_t strlen_avx2(char *);

static void *function_func[]={ __strlen_sse2_pminub , strlen_new , strlen_revised , NULL };
static char *function_names[]={"strlen_sse2_pminub","strlen_new","strlen_revised","strlen_avx2"};
static char *function_color[]={"red"               ,"blue"       ,"green"     ,"yellow"};

