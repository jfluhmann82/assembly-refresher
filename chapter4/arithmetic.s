.globl _start
.section .text
_start:
    # Perform various arithmetic functions
    movq $3,   %rdi     # put 3 in rdi
    movq %rdi, %rax     # move 3 to rax
    addq %rdi, %rax     # add 3 and 3 = 6
    mulq %rdi           # 6 * 3 = 18 in %rax
    movq $2,   %rdi
    addq %rdi, %rax     # 2 + 18 = 20
    movq $4,   %rdi
    mulq %rdi           # 20 * 4 = 80 in %rax
    movq %rax, %rdi     # store result (80) in %rdi to be the exit code for sys exit below

    # set the exit system call number
    movq $60, %rax

    syscall
