global ft_read
extern __errno_location

section .text

ft_read:
	mov		rax, 0
	syscall
	cmp		rax, 0
	jl		error
	ret

error:
	mov		rdi, rax
	call	__errno_location
	neg		rdi
	mov		[rax], rdi
	mov		rax, -1
	ret
