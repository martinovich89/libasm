global ft_strcmp

ft_strcmp:
	mov		rcx, 0
	jmp		cmp_loop

cmp_loop:
	mov		bl, byte [rsi + rcx]
	mov		dl, byte [rdi + rcx]
	cmp		bl, 0
	je		exit
	cmp		dl, bl
	jne		exit
	inc		rcx
	jmp		cmp_loop

exit:
	movzx	rax, dl
	movzx	r8, bl
	sub		rax, r8
	ret
