global ft_strcpy

section .data

section .text
ft_strcpy:
	mov		rcx, 0

cpy_loop:
	mov		dl, byte [rsi + rcx]
	cmp		dl, 0
	je		exit
	mov		byte [rdi + rcx], dl
	inc		rcx
	jmp		cpy_loop

exit:
	mov		byte [rdi + rcx], 0
	mov		rax, rdi
	ret
