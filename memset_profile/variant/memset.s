# 1 "../memset.S"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../memset.S"
# 20 "../memset.S"
# 1 "./sysdep.h" 1
# 21 "../memset.S" 2





 .text

.text ;.globl __bzero; .type __bzero, @function;__bzero:; .cfi_startproc
 movq %rdi, %rax
 movq %rsi, %rdx
 pxor %xmm8, %xmm8
 jmp .Lentry_from_bzero
.cfi_endproc ; .size __bzero, .-__bzero



.text ;.globl __memset_tail; .type __memset_tail, @function;__memset_tail:; .cfi_startproc
 movq %rcx, %rax

 movd %esi, %xmm8
 punpcklbw %xmm8, %xmm8
 punpcklwd %xmm8, %xmm8
 pshufd $0, %xmm8, %xmm8

 jmp .Lentry_from_bzero
.cfi_endproc ; .size __memset_tail, .-__memset_tail
# 56 "../memset.S"
.text ;.globl memset_glibc; .type memset_glibc, @function;memset_glibc:; .cfi_startproc
 movd %esi, %xmm8
 movq %rdi, %rax
 punpcklbw %xmm8, %xmm8
 punpcklwd %xmm8, %xmm8
 pshufd $0, %xmm8, %xmm8
.Lentry_from_bzero:
 cmpq $64, %rdx
 ja .Lloop_start
 cmpq $16, %rdx
 jbe .Lless_16_bytes
 cmpq $32, %rdx
 movdqu %xmm8, (%rdi)
 movdqu %xmm8, -16(%rdi,%rdx)
 ja .Lbetween_32_64_bytes
.Lreturn:
 rep
 ret
 .p2align 4
.Lbetween_32_64_bytes:
 movdqu %xmm8, 16(%rdi)
 movdqu %xmm8, -32(%rdi,%rdx)
 ret
 .p2align 4
.Lloop_start:
 leaq 64(%rdi), %rcx
 movdqu %xmm8, (%rdi)
 andq $-64, %rcx
 movdqu %xmm8, -16(%rdi,%rdx)
 movdqu %xmm8, 16(%rdi)
 movdqu %xmm8, -32(%rdi,%rdx)
 movdqu %xmm8, 32(%rdi)
 movdqu %xmm8, -48(%rdi,%rdx)
 movdqu %xmm8, 48(%rdi)
 movdqu %xmm8, -64(%rdi,%rdx)
 addq %rdi, %rdx
 andq $-64, %rdx
 cmpq %rdx, %rcx
 je .Lreturn
 .p2align 4
.Lloop:
 movdqa %xmm8, (%rcx)
 movdqa %xmm8, 16(%rcx)
 movdqa %xmm8, 32(%rcx)
 movdqa %xmm8, 48(%rcx)
 addq $64, %rcx
 cmpq %rcx, %rdx
 jne .Lloop
 rep
 ret
.Lless_16_bytes:
 movq %xmm8, %rcx
 testb $24, %dl
 jne .Lbetween8_16bytes
 testb $4, %dl
 jne .Lbetween4_7bytes
 testb $1, %dl
 je .Lodd_byte
 movb %cl, (%rdi)
.Lodd_byte:
 testb $2, %dl
 je .Lreturn
 movw %cx, -2(%rax,%rdx)
 ret
.Lbetween4_7bytes:
 movl %ecx, (%rdi)
 movl %ecx, -4(%rdi,%rdx)
 ret
.Lbetween8_16bytes:
 movq %rcx, (%rdi)
 movq %rcx, -8(%rdi,%rdx)
 ret

.cfi_endproc ; .size memset_glibc, .-memset_glibc

