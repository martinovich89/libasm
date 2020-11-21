section .data

section .text
	global ft_strlen

ft_strlen:
	mov		rax, 0
	jmp		len_loop

len_loop:
	cmp		byte [rdi + rax], 0
	je		exit
	inc		rax
	jmp		len_loop

exit:
	ret
