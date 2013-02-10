#define L(x) .L##x
#define SHARED

#define strlen strlen_new

#define ENTRY(x) \
.text ;\
.globl x;\
  .type x, @function;\
x:;\
  .cfi_startproc
#define END(x) \
  .cfi_endproc ;\
  .size x, .-x
#define libc_hidden_builtin_def(x) 

#include "strlen-new.S"
