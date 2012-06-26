# blue #
# mark_description "Intel(R) C Intel(R) 64 Compiler XE for applications running on Intel(R) 64, Version 12.1.4.319 Build 2012041";
# mark_description "0";
# mark_description "-O3 -S";
	.file "test_strlen.c"
	.text
..TXTST0:
# -- Begin  strlen
# mark_begin;
       .align    16,0x90
	.globl strlen
strlen:
# parameter 1: %rdi
..B1.1:                         # Preds ..B1.0
..___tag_value_strlen.1:                                        #15.1
        movq      %rdi, %rcx                                    #21.4
        andq      $63, %rcx                                     #21.4
        movq      %rdi, %rax                                    #21.4
        subq      %rcx, %rax                                    #21.4
        pxor      %xmm0, %xmm0                                  #24.20
        movdqa    (%rax), %xmm1                                 #27.4
        movdqa    16(%rax), %xmm2                               #27.4
        pcmpeqb   %xmm0, %xmm1                                  #27.4
        movdqa    32(%rax), %xmm3                               #27.4
        pcmpeqb   %xmm0, %xmm2                                  #27.4
        movdqa    48(%rax), %xmm4                               #27.4
        pcmpeqb   %xmm0, %xmm3                                  #27.4
        pmovmskb  %xmm1, %esi                                   #27.4
        pcmpeqb   %xmm0, %xmm4                                  #27.4
        pmovmskb  %xmm2, %r8d                                   #27.4
        pmovmskb  %xmm3, %r9d                                   #27.4
        pmovmskb  %xmm4, %edx                                   #27.4
        orq       %r8, %rsi                                     #27.4
        orq       %r9, %rsi                                     #27.4
        orq       %rdx, %rsi                                    #27.4
        movq      %rsi, %rdx                                    #30.10
        shrq      %cl, %rdx                                     #30.10
        shlq      %cl, %rdx                                     #30.10
                                # LOE rax rdx rbx rbp rsi rdi r12 r13 r14 r15 xmm0
..B1.2:                         # Preds ..B1.1 ..B1.7
        prefetchnta 512(%rax)                                   #32.19
        testq     %rdx, %rdx                                    #33.9
        je        ..B1.7        # Prob 62%                      #33.9
                                # LOE rax rdx rbx rbp rsi rdi r12 r13 r14 r15 xmm0
..B1.4:                         # Preds ..B1.2 ..B1.5
        movq      %rdx, %r8                                     #34.8
        movl      $1, %r11d                                     #36.30
        shrq      $32, %r8                                      #34.8
        lea       -1(%rdx), %r10                                #34.8
        bsf       %r8d, %r9d                                    #34.8
        bsf       %edx, %ecx                                    #34.8
        addl      $32, %r9d                                     #34.8
        testl     %edx, %edx                                    #34.8
        cmove     %r9d, %ecx                                    #34.8
        andq      %r10, %rdx                                    #34.8
        shll      %cl, %r11d                                    #36.30
        movslq    %r11d, %r11                                   #36.30
        testq     %r11, %rsi                                    #36.30
        jne       ..B1.8        # Prob 5%                       #36.47
                                # LOE rax rdx rbx rbp rsi rdi r12 r13 r14 r15 ecx xmm0
..B1.5:                         # Preds ..B1.4
        testq     %rdx, %rdx                                    #34.8
        jne       ..B1.4        # Prob 82%                      #34.8
                                # LOE rax rdx rbx rbp rsi rdi r12 r13 r14 r15 xmm0
..B1.7:                         # Preds ..B1.5 ..B1.2
        addq      $64, %rax                                     #3.5
        movdqa    (%rax), %xmm1                                 #4.5
        movdqa    16(%rax), %xmm2                               #4.5
        pcmpeqb   %xmm0, %xmm1                                  #4.5
        movdqa    32(%rax), %xmm3                               #4.5
        pcmpeqb   %xmm0, %xmm2                                  #4.5
        movdqa    48(%rax), %xmm4                               #4.5
        pcmpeqb   %xmm0, %xmm3                                  #4.5
        pmovmskb  %xmm1, %esi                                   #4.5
        pcmpeqb   %xmm0, %xmm4                                  #4.5
        pmovmskb  %xmm2, %edx                                   #4.5
        pmovmskb  %xmm3, %ecx                                   #4.5
        pmovmskb  %xmm4, %r8d                                   #4.5
        orq       %rdx, %rsi                                    #4.5
        orq       %rcx, %rsi                                    #4.5
        orq       %r8, %rsi                                     #4.5
        movq      %rsi, %rdx                                    #6.5
        jmp       ..B1.2        # Prob 100%                     #6.5
                                # LOE rax rdx rbx rbp rsi rdi r12 r13 r14 r15 xmm0
..B1.8:                         # Preds ..B1.4                  # Infreq
        movslq    %ecx, %rcx                                    #35.19
        subq      %rdi, %rcx                                    #37.12
        addq      %rcx, %rax                                    #37.12
        ret                                                     #37.12
        .align    16,0x90
..___tag_value_strlen.3:                                        #
                                # LOE
# mark_end;
	.type	strlen,@function
	.size	strlen,.-strlen
	.data
# -- End  strlen
	.text
# -- Begin  reversed
# mark_begin;
       .align    16,0x90
	.globl reversed
reversed:
..B2.1:                         # Preds ..B2.0
..___tag_value_reversed.4:                                      #2.15
        xorl      %eax, %eax                                    #2.23
        ret                                                     #2.23
        .align    16,0x90
..___tag_value_reversed.6:                                      #
                                # LOE
# mark_end;
	.type	reversed,@function
	.size	reversed,.-reversed
	.data
# -- End  reversed
	.text
# -- Begin  strstr2
# mark_begin;
       .align    16,0x90
	.globl strstr2
strstr2:
# parameter 1: %rdi
# parameter 2: %rsi
..B3.1:                         # Preds ..B3.0
..___tag_value_strstr2.7:                                       #3.31
        movq      %rdi, %rcx                                    #4.10
        andq      $63, %rcx                                     #4.10
        movq      %rdi, %rax                                    #4.17
        subq      %rcx, %rax                                    #4.17
        pxor      %xmm0, %xmm0                                  #4.10
        movdqa    (%rax), %xmm1                                 #4.10
        movdqa    16(%rax), %xmm2                               #4.10
        pcmpeqb   %xmm0, %xmm1                                  #4.10
        movdqa    32(%rax), %xmm3                               #4.10
        pcmpeqb   %xmm0, %xmm2                                  #4.10
        movdqa    48(%rax), %xmm4                               #4.10
        pcmpeqb   %xmm0, %xmm3                                  #4.10
        pmovmskb  %xmm1, %esi                                   #4.10
        pcmpeqb   %xmm0, %xmm4                                  #4.10
        pmovmskb  %xmm2, %r8d                                   #4.10
        pmovmskb  %xmm3, %r9d                                   #4.10
        pmovmskb  %xmm4, %edx                                   #4.10
        orq       %r8, %rsi                                     #4.10
        orq       %r9, %rsi                                     #4.10
        orq       %rdx, %rsi                                    #4.10
        movq      %rsi, %rdx                                    #4.10
        shrq      %cl, %rdx                                     #4.10
        shlq      %cl, %rdx                                     #4.10
                                # LOE rax rdx rbx rbp rsi rdi r12 r13 r14 r15 xmm0
..B3.2:                         # Preds ..B3.1 ..B3.7
        prefetchnta 512(%rax)                                   #4.10
        testq     %rdx, %rdx                                    #4.10
        je        ..B3.7        # Prob 62%                      #4.10
                                # LOE rax rdx rbx rbp rsi rdi r12 r13 r14 r15 xmm0
..B3.4:                         # Preds ..B3.2 ..B3.5
        movq      %rdx, %r8                                     #4.10
        movl      $1, %r11d                                     #4.10
        shrq      $32, %r8                                      #4.10
        lea       -1(%rdx), %r10                                #4.10
        bsf       %r8d, %r9d                                    #4.10
        bsf       %edx, %ecx                                    #4.10
        addl      $32, %r9d                                     #4.10
        testl     %edx, %edx                                    #4.10
        cmove     %r9d, %ecx                                    #4.10
        andq      %r10, %rdx                                    #4.10
        shll      %cl, %r11d                                    #4.10
        movslq    %r11d, %r11                                   #4.10
        testq     %r11, %rsi                                    #4.10
        jne       ..B3.8        # Prob 5%                       #4.10
                                # LOE rax rdx rbx rbp rsi rdi r12 r13 r14 r15 ecx xmm0
..B3.5:                         # Preds ..B3.4
        testq     %rdx, %rdx                                    #4.10
        jne       ..B3.4        # Prob 82%                      #4.10
                                # LOE rax rdx rbx rbp rsi rdi r12 r13 r14 r15 xmm0
..B3.7:                         # Preds ..B3.5 ..B3.2
        addq      $64, %rax                                     #4.10
        movdqa    (%rax), %xmm1                                 #4.10
        movdqa    16(%rax), %xmm2                               #4.10
        pcmpeqb   %xmm0, %xmm1                                  #4.10
        movdqa    32(%rax), %xmm3                               #4.10
        pcmpeqb   %xmm0, %xmm2                                  #4.10
        movdqa    48(%rax), %xmm4                               #4.10
        pcmpeqb   %xmm0, %xmm3                                  #4.10
        pmovmskb  %xmm1, %esi                                   #4.10
        pcmpeqb   %xmm0, %xmm4                                  #4.10
        pmovmskb  %xmm2, %edx                                   #4.10
        pmovmskb  %xmm3, %ecx                                   #4.10
        pmovmskb  %xmm4, %r8d                                   #4.10
        orq       %rdx, %rsi                                    #4.10
        orq       %rcx, %rsi                                    #4.10
        orq       %r8, %rsi                                     #4.10
        movq      %rsi, %rdx                                    #4.10
        jmp       ..B3.2        # Prob 100%                     #4.10
                                # LOE rax rdx rbx rbp rsi rdi r12 r13 r14 r15 xmm0
..B3.8:                         # Preds ..B3.4                  # Infreq
        movslq    %ecx, %rcx                                    #4.10
        subq      %rdi, %rcx                                    #4.10
        addq      %rcx, %rax                                    #4.10
        ret                                                     #4.10
        .align    16,0x90
..___tag_value_strstr2.9:                                       #
                                # LOE
# mark_end;
	.type	strstr2,@function
	.size	strstr2,.-strstr2
	.data
# -- End  strstr2
	.section .rodata, "a"
	.align 4
	.align 4
	.globl unroll
unroll:
	.long	4
	.type	unroll,@object
	.size	unroll,4
	.align 4
	.globl prefetch
prefetch:
	.long	8
	.type	prefetch,@object
	.size	prefetch,4
	.data
	.section .note.GNU-stack, ""
// -- Begin DWARF2 SEGMENT .eh_frame
	.section .eh_frame,"a",@progbits
.eh_frame_seg:
	.align 8
	.4byte 0x00000014
	.8byte 0x7801000100000000
	.8byte 0x0000019008070c10
	.4byte 0x00000000
	.4byte 0x00000014
	.4byte 0x0000001c
	.8byte ..___tag_value_strlen.1
	.8byte ..___tag_value_strlen.3-..___tag_value_strlen.1
	.4byte 0x00000014
	.4byte 0x00000034
	.8byte ..___tag_value_reversed.4
	.8byte ..___tag_value_reversed.6-..___tag_value_reversed.4
	.4byte 0x00000014
	.4byte 0x0000004c
	.8byte ..___tag_value_strstr2.7
	.8byte ..___tag_value_strstr2.9-..___tag_value_strstr2.7
# End
