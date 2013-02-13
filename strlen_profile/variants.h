size_t __strlen_sse2_pminub(char *);
size_t strlen_new(char *);
size_t strlen_new2(char *);

size_t __strlen_sse42(char *);
size_t strlen_avx2(char *);

//static void * strlen_func[]={__strlen_sse2_pminub ,__strlen_sse2_pminub ,__strlen_sse2_pminub ,NULL};
static void * strlen_func[]={ __strlen_sse2_pminub , strlen_new , strlen_new2 , NULL };
static char* strlen_names[]={"strlen_sse2_pminub","strlen_new","strlen_revised","strlen_avx2"};
static char* strlen_color[]={"red"               ,"blue"       ,"green"     ,"yellow"};

