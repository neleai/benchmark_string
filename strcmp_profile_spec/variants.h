int __stpcpy_sse2();
int __stpcpy_ssse3();
int stpcpy_new();


static void * function_func[]={ __stpcpy_sse2, stpcpy_new ,__stpcpy_ssse3 , NULL };
static char* function_names[]={"strcpy_sse2","strcpy_new","strcpy_ssse3","NULL"};
static char* function_color[]={"red"               ,"blue"       ,"green"     ,"yellow"};

