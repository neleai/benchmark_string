# 1 "variant/strrchr-sse2-no-bsf.S"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "variant/strrchr-sse2-no-bsf.S"
# 20 "variant/strrchr-sse2-no-bsf.S"
# 1 "variant/sysdep.h" 1
# 21 "variant/strrchr-sse2-no-bsf.S" 2

.text ;.globl __strrchr_sse2_no_bsf; .type __strrchr_sse2_no_bsf, @function;__strrchr_sse2_no_bsf:; .cfi_startproc

 movd %rsi, %xmm1
 pxor %xmm2, %xmm2
 mov %rdi, %rcx
 punpcklbw %xmm1, %xmm1
 punpcklbw %xmm1, %xmm1

 and $63, %rcx
 cmp $48, %rcx
 pshufd $0, %xmm1, %xmm1
 ja .Lcrosscache


 movdqu (%rdi), %xmm0
 pcmpeqb %xmm0, %xmm2
 pcmpeqb %xmm1, %xmm0

 pmovmskb %xmm2, %rcx

 pmovmskb %xmm0, %rax
 add $16, %rdi

 test %rax, %rax
 jnz .Lunaligned_match1

 test %rcx, %rcx
 jnz .Lreturn_null

 and $-16, %rdi
 xor %r8, %r8
 jmp .Lloop

 .p2align 4
.Lunaligned_match1:
 test %rcx, %rcx
 jnz .Lprolog_find_zero_1

 mov %rax, %r8
 mov %rdi, %rsi
 and $-16, %rdi
 jmp .Lloop

 .p2align 4
.Lcrosscache:

 and $15, %rcx
 and $-16, %rdi
 pxor %xmm3, %xmm3
 movdqa (%rdi), %xmm0
 pcmpeqb %xmm0, %xmm3
 pcmpeqb %xmm1, %xmm0

 pmovmskb %xmm3, %rdx

 pmovmskb %xmm0, %rax

 shr %cl, %rdx
 shr %cl, %rax
 add $16, %rdi

 test %rax, %rax
 jnz .Lunaligned_match

 test %rdx, %rdx
 jnz .Lreturn_null

 xor %r8, %r8
 jmp .Lloop

 .p2align 4
.Lunaligned_match:
 test %rdx, %rdx
 jnz .Lprolog_find_zero

 mov %rax, %r8
 lea (%rdi, %rcx), %rsi


 .p2align 4
.Lloop:
 movdqa (%rdi), %xmm0
 pcmpeqb %xmm0, %xmm2
 add $16, %rdi
 pcmpeqb %xmm1, %xmm0
 pmovmskb %xmm2, %rcx
 pmovmskb %xmm0, %rax
 or %rax, %rcx
 jnz .Lmatches

 movdqa (%rdi), %xmm0
 pcmpeqb %xmm0, %xmm2
 add $16, %rdi
 pcmpeqb %xmm1, %xmm0
 pmovmskb %xmm2, %rcx
 pmovmskb %xmm0, %rax
 or %rax, %rcx
 jnz .Lmatches

 movdqa (%rdi), %xmm0
 pcmpeqb %xmm0, %xmm2
 add $16, %rdi
 pcmpeqb %xmm1, %xmm0
 pmovmskb %xmm2, %rcx
 pmovmskb %xmm0, %rax
 or %rax, %rcx
 jnz .Lmatches

 movdqa (%rdi), %xmm0
 pcmpeqb %xmm0, %xmm2
 add $16, %rdi
 pcmpeqb %xmm1, %xmm0
 pmovmskb %xmm2, %rcx
 pmovmskb %xmm0, %rax
 or %rax, %rcx
 jz .Lloop

.Lmatches:
 test %rax, %rax
 jnz .Lmatch
.Lreturn_value:
 test %r8, %r8
 jz .Lreturn_null
 mov %r8, %rax
 mov %rsi, %rdi
 jmp .Lmatch_exit

 .p2align 4
.Lmatch:
 pmovmskb %xmm2, %rcx
 test %rcx, %rcx
 jnz .Lfind_zero
 mov %rax, %r8
 mov %rdi, %rsi
 jmp .Lloop

 .p2align 4
.Lfind_zero:
 test %cl, %cl
 jz .Lfind_zero_high
 mov %cl, %dl
 and $15, %dl
 jz .Lfind_zero_8
 test $0x01, %cl
 jnz .LFindZeroExit1
 test $0x02, %cl
 jnz .LFindZeroExit2
 test $0x04, %cl
 jnz .LFindZeroExit3
 and $1 << 4 - 1, %rax
 jz .Lreturn_value
 jmp .Lmatch_exit

 .p2align 4
.Lfind_zero_8:
 test $0x10, %cl
 jnz .LFindZeroExit5
 test $0x20, %cl
 jnz .LFindZeroExit6
 test $0x40, %cl
 jnz .LFindZeroExit7
 and $1 << 8 - 1, %rax
 jz .Lreturn_value
 jmp .Lmatch_exit

 .p2align 4
.Lfind_zero_high:
 mov %ch, %dh
 and $15, %dh
 jz .Lfind_zero_high_8
 test $0x01, %ch
 jnz .LFindZeroExit9
 test $0x02, %ch
 jnz .LFindZeroExit10
 test $0x04, %ch
 jnz .LFindZeroExit11
 and $1 << 12 - 1, %rax
 jz .Lreturn_value
 jmp .Lmatch_exit

 .p2align 4
.Lfind_zero_high_8:
 test $0x10, %ch
 jnz .LFindZeroExit13
 test $0x20, %ch
 jnz .LFindZeroExit14
 test $0x40, %ch
 jnz .LFindZeroExit15
 and $1 << 16 - 1, %rax
 jz .Lreturn_value
 jmp .Lmatch_exit

 .p2align 4
.LFindZeroExit1:
 and $1, %rax
 jz .Lreturn_value
 jmp .Lmatch_exit

 .p2align 4
.LFindZeroExit2:
 and $1 << 2 - 1, %rax
 jz .Lreturn_value
 jmp .Lmatch_exit

 .p2align 4
.LFindZeroExit3:
 and $1 << 3 - 1, %rax
 jz .Lreturn_value
 jmp .Lmatch_exit

 .p2align 4
.LFindZeroExit5:
 and $1 << 5 - 1, %rax
 jz .Lreturn_value
 jmp .Lmatch_exit

 .p2align 4
.LFindZeroExit6:
 and $1 << 6 - 1, %rax
 jz .Lreturn_value
 jmp .Lmatch_exit

 .p2align 4
.LFindZeroExit7:
 and $1 << 7 - 1, %rax
 jz .Lreturn_value
 jmp .Lmatch_exit

 .p2align 4
.LFindZeroExit9:
 and $1 << 9 - 1, %rax
 jz .Lreturn_value
 jmp .Lmatch_exit

 .p2align 4
.LFindZeroExit10:
 and $1 << 10 - 1, %rax
 jz .Lreturn_value
 jmp .Lmatch_exit

 .p2align 4
.LFindZeroExit11:
 and $1 << 11 - 1, %rax
 jz .Lreturn_value
 jmp .Lmatch_exit

 .p2align 4
.LFindZeroExit13:
 and $1 << 13 - 1, %rax
 jz .Lreturn_value
 jmp .Lmatch_exit

 .p2align 4
.LFindZeroExit14:
 and $1 << 14 - 1, %rax
 jz .Lreturn_value
 jmp .Lmatch_exit

 .p2align 4
.LFindZeroExit15:
 and $1 << 15 - 1, %rax
 jz .Lreturn_value

 .p2align 4
.Lmatch_exit:
 test %ah, %ah
 jnz .Lmatch_exit_high
 mov %al, %dl
 and $15 << 4, %dl
 jnz .Lmatch_exit_8
 test $0x08, %al
 jnz .LExit4
 test $0x04, %al
 jnz .LExit3
 test $0x02, %al
 jnz .LExit2
 lea -16(%rdi), %rax
 ret

 .p2align 4
.Lmatch_exit_8:
 test $0x80, %al
 jnz .LExit8
 test $0x40, %al
 jnz .LExit7
 test $0x20, %al
 jnz .LExit6
 lea -12(%rdi), %rax
 ret

 .p2align 4
.Lmatch_exit_high:
 mov %ah, %dh
 and $15 << 4, %dh
 jnz .Lmatch_exit_high_8
 test $0x08, %ah
 jnz .LExit12
 test $0x04, %ah
 jnz .LExit11
 test $0x02, %ah
 jnz .LExit10
 lea -8(%rdi), %rax
 ret

 .p2align 4
.Lmatch_exit_high_8:
 test $0x80, %ah
 jnz .LExit16
 test $0x40, %ah
 jnz .LExit15
 test $0x20, %ah
 jnz .LExit14
 lea -4(%rdi), %rax
 ret

 .p2align 4
.LExit2:
 lea -15(%rdi), %rax
 ret

 .p2align 4
.LExit3:
 lea -14(%rdi), %rax
 ret

 .p2align 4
.LExit4:
 lea -13(%rdi), %rax
 ret

 .p2align 4
.LExit6:
 lea -11(%rdi), %rax
 ret

 .p2align 4
.LExit7:
 lea -10(%rdi), %rax
 ret

 .p2align 4
.LExit8:
 lea -9(%rdi), %rax
 ret

 .p2align 4
.LExit10:
 lea -7(%rdi), %rax
 ret

 .p2align 4
.LExit11:
 lea -6(%rdi), %rax
 ret

 .p2align 4
.LExit12:
 lea -5(%rdi), %rax
 ret

 .p2align 4
.LExit14:
 lea -3(%rdi), %rax
 ret

 .p2align 4
.LExit15:
 lea -2(%rdi), %rax
 ret

 .p2align 4
.LExit16:
 lea -1(%rdi), %rax
 ret


 .p2align 4
.Lreturn_null:
 xor %rax, %rax
 ret

 .p2align 4
.Lprolog_find_zero:
 add %rcx, %rdi
 mov %rdx, %rcx
.Lprolog_find_zero_1:
 test %cl, %cl
 jz .Lprolog_find_zero_high
 mov %cl, %dl
 and $15, %dl
 jz .Lprolog_find_zero_8
 test $0x01, %cl
 jnz .LPrologFindZeroExit1
 test $0x02, %cl
 jnz .LPrologFindZeroExit2
 test $0x04, %cl
 jnz .LPrologFindZeroExit3
 and $1 << 4 - 1, %rax
 jnz .Lmatch_exit
 xor %rax, %rax
 ret

 .p2align 4
.Lprolog_find_zero_8:
 test $0x10, %cl
 jnz .LPrologFindZeroExit5
 test $0x20, %cl
 jnz .LPrologFindZeroExit6
 test $0x40, %cl
 jnz .LPrologFindZeroExit7
 and $1 << 8 - 1, %rax
 jnz .Lmatch_exit
 xor %rax, %rax
 ret

 .p2align 4
.Lprolog_find_zero_high:
 mov %ch, %dh
 and $15, %dh
 jz .Lprolog_find_zero_high_8
 test $0x01, %ch
 jnz .LPrologFindZeroExit9
 test $0x02, %ch
 jnz .LPrologFindZeroExit10
 test $0x04, %ch
 jnz .LPrologFindZeroExit11
 and $1 << 12 - 1, %rax
 jnz .Lmatch_exit
 xor %rax, %rax
 ret

 .p2align 4
.Lprolog_find_zero_high_8:
 test $0x10, %ch
 jnz .LPrologFindZeroExit13
 test $0x20, %ch
 jnz .LPrologFindZeroExit14
 test $0x40, %ch
 jnz .LPrologFindZeroExit15
 and $1 << 16 - 1, %rax
 jnz .Lmatch_exit
 xor %rax, %rax
 ret

 .p2align 4
.LPrologFindZeroExit1:
 and $1, %rax
 jnz .Lmatch_exit
 xor %rax, %rax
 ret

 .p2align 4
.LPrologFindZeroExit2:
 and $1 << 2 - 1, %rax
 jnz .Lmatch_exit
 xor %rax, %rax
 ret

 .p2align 4
.LPrologFindZeroExit3:
 and $1 << 3 - 1, %rax
 jnz .Lmatch_exit
 xor %rax, %rax
 ret

 .p2align 4
.LPrologFindZeroExit5:
 and $1 << 5 - 1, %rax
 jnz .Lmatch_exit
 xor %rax, %rax
 ret

 .p2align 4
.LPrologFindZeroExit6:
 and $1 << 6 - 1, %rax
 jnz .Lmatch_exit
 xor %rax, %rax
 ret

 .p2align 4
.LPrologFindZeroExit7:
 and $1 << 7 - 1, %rax
 jnz .Lmatch_exit
 xor %rax, %rax
 ret

 .p2align 4
.LPrologFindZeroExit9:
 and $1 << 9 - 1, %rax
 jnz .Lmatch_exit
 xor %rax, %rax
 ret

 .p2align 4
.LPrologFindZeroExit10:
 and $1 << 10 - 1, %rax
 jnz .Lmatch_exit
 xor %rax, %rax
 ret

 .p2align 4
.LPrologFindZeroExit11:
 and $1 << 11 - 1, %rax
 jnz .Lmatch_exit
 xor %rax, %rax
 ret

 .p2align 4
.LPrologFindZeroExit13:
 and $1 << 13 - 1, %rax
 jnz .Lmatch_exit
 xor %rax, %rax
 ret

 .p2align 4
.LPrologFindZeroExit14:
 and $1 << 14 - 1, %rax
 jnz .Lmatch_exit
 xor %rax, %rax
 ret

 .p2align 4
.LPrologFindZeroExit15:
 and $1 << 15 - 1, %rax
 jnz .Lmatch_exit
 xor %rax, %rax
 ret

.cfi_endproc ; .size __strrchr_sse2_no_bsf, .-__strrchr_sse2_no_bsf
