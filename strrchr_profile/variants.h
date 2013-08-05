
int __strrchr_sse42();
int __strrchr_sse2();
int __strrchr_sse2_no_bsf();

static void * function_func[]={ __strrchr_sse2, __strrchr_sse42 ,__strrchr_sse2_no_bsf  };
static char* function_names[]={"__strrchr_sse2","__strrchr_sse42","__strrchr_sse2_no_bsf"};
static char* function_color[]={"red"               ,"blue"       ,"green"     ,"yellow"};

