# My first program. this is a comment.
.globl _start
.section .text
_start:
    movq $60, %rax
    movq $8,  %rdi
    syscall

