size_t __strlen_sse2_pminub(char *);
size_t strlen_new(char *);
size_t __strlen_sse42(char *);
size_t strlen_avx2(char *);


static void * strlen_func[]={ __strlen_sse2_pminub , strlen_new , __strlen_sse42 , NULL };
static char* strlen_names[]={"strlen_sse2_pminub","strlen_new","strlen_sse4","strlen_avx2"};
static char* strlen_color[]={"red"               ,"blue"       ,"green"     ,"yellow"};

