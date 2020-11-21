global print_hello

section .text

print_hello:
    mov     rax, 1
    mov     rdi, 1
    mov     rsi, "hello"
    mov     rdx, 5
    syscall
