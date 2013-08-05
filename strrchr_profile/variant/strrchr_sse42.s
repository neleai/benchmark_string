# 1 "variant/strrchr-sse42.S"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "variant/strrchr-sse42.S"
# 20 "variant/strrchr-sse42.S"
# 1 "variant/sysdep.h" 1
# 21 "variant/strrchr-sse42.S" 2
# 67 "variant/strrchr-sse42.S"
 .section .text.sse4.2,"ax",@progbits
 .align 16
 .type __strrchr_sse42, @function
 .globl __strrchr_sse42
 .hidden __strrchr_sse42
__strrchr_sse42:
 .cfi_startproc
 xor %eax,%eax
 movd %esi, %xmm1
 punpcklbw %xmm1, %xmm1
 movl %edi, %esi
 punpcklbw %xmm1, %xmm1
 andl $15, %esi
 pshufd $0, %xmm1, %xmm1
 movq %rdi, %r8
 je .Lloop


 leaq .Lpsrldq_table(%rip), %rdx
 andq $-16, %r8
 movslq (%rdx,%rsi,4),%r9
 movdqa (%r8), %xmm0
 addq %rdx, %r9
 jmp *%r9


 .p2align 4
.Lpsrldq_1:
 psrldq $1, %xmm0

 .p2align 4
.Lunaligned_pcmpistri:
 pcmpistri $0x4a, %xmm1, %xmm0
 jnc .Lunaligned_no_byte
 leaq (%rdi,%rcx), %rax
.Lunaligned_no_byte:

 pcmpistri $0x3a, %xmm0, %xmm0
 movl $16, %edx
 subl %esi, %edx
 cmpl %ecx, %edx


 jg .Lexit
 addq $16, %r8


 .p2align 4
.Lloop:
 pcmpistri $0x4a, (%r8), %xmm1
 jbe .Lmatch_or_eos
 addq $16, %r8
 jmp .Lloop
 .p2align 4
.Lmatch_or_eos:
 je .Lhad_eos
.Lmatch_no_eos:
 leaq (%r8,%rcx), %rax
 addq $16, %r8
 jmp .Lloop
 .p2align 4
.Lhad_eos:
 jnc .Lexit
 leaq (%r8,%rcx), %rax
 .p2align 4
.Lexit:
 ret


 .p2align 4
.Lpsrldq_15:
 psrldq $15, %xmm0
 jmp .Lunaligned_pcmpistri


 .p2align 4
.Lpsrldq_14:
 psrldq $14, %xmm0
 jmp .Lunaligned_pcmpistri


 .p2align 4
.Lpsrldq_13:
 psrldq $13, %xmm0
 jmp .Lunaligned_pcmpistri


 .p2align 4
.Lpsrldq_12:
 psrldq $12, %xmm0
 jmp .Lunaligned_pcmpistri


 .p2align 4
.Lpsrldq_11:
 psrldq $11, %xmm0
 jmp .Lunaligned_pcmpistri


 .p2align 4
.Lpsrldq_10:
 psrldq $10, %xmm0
 jmp .Lunaligned_pcmpistri


 .p2align 4
.Lpsrldq_9:
 psrldq $9, %xmm0
 jmp .Lunaligned_pcmpistri


 .p2align 4
.Lpsrldq_8:
 psrldq $8, %xmm0
 jmp .Lunaligned_pcmpistri


 .p2align 4
.Lpsrldq_7:
 psrldq $7, %xmm0
 jmp .Lunaligned_pcmpistri


 .p2align 4
.Lpsrldq_6:
 psrldq $6, %xmm0
 jmp .Lunaligned_pcmpistri


 .p2align 4
.Lpsrldq_5:
 psrldq $5, %xmm0
 jmp .Lunaligned_pcmpistri


 .p2align 4
.Lpsrldq_4:
 psrldq $4, %xmm0
 jmp .Lunaligned_pcmpistri


 .p2align 4
.Lpsrldq_3:
 psrldq $3, %xmm0
 jmp .Lunaligned_pcmpistri


 .p2align 4
.Lpsrldq_2:
 psrldq $2, %xmm0
 jmp .Lunaligned_pcmpistri

 .cfi_endproc
 .size __strrchr_sse42, .-__strrchr_sse42

 .section .rodata.sse4.2,"a",@progbits
 .p2align 4
.Lpsrldq_table:
 .int .Lloop - .Lpsrldq_table
 .int .Lpsrldq_1 - .Lpsrldq_table
 .int .Lpsrldq_2 - .Lpsrldq_table
 .int .Lpsrldq_3 - .Lpsrldq_table
 .int .Lpsrldq_4 - .Lpsrldq_table
 .int .Lpsrldq_5 - .Lpsrldq_table
 .int .Lpsrldq_6 - .Lpsrldq_table
 .int .Lpsrldq_7 - .Lpsrldq_table
 .int .Lpsrldq_8 - .Lpsrldq_table
 .int .Lpsrldq_9 - .Lpsrldq_table
 .int .Lpsrldq_10 - .Lpsrldq_table
 .int .Lpsrldq_11 - .Lpsrldq_table
 .int .Lpsrldq_12 - .Lpsrldq_table
 .int .Lpsrldq_13 - .Lpsrldq_table
 .int .Lpsrldq_14 - .Lpsrldq_table
 .int .Lpsrldq_15 - .Lpsrldq_table
