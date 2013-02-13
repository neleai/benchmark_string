int __stpcpy_sse2();
int __stpcpy_ssse3();
int stpcpy_new();


static void * strcpy_func[]={ __stpcpy_sse2, stpcpy_new ,__stpcpy_ssse3 , NULL };
static char* strcpy_names[]={"strcpy_sse2","strcpy_new","strcpy_ssse3","NULL"};
static char* strcpy_color[]={"red"               ,"blue"       ,"green"     ,"yellow"};

