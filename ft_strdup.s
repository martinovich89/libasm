global ft_strdup
extern ft_strlen
extern ft_strcpy
extern malloc
extern __errno_location

section .text

ft_strdup:
	push	rdi
	call	ft_strlen
	add		rax, 1
	mov		rdi, rax
	call	malloc
	cmp		rax, 0
	je		return_null
	pop		rdi
	mov		rsi, rdi
	mov		rdi, rax
	call	ft_strcpy
	ret

return_null:
	call	__errno_location
	mov		rdi, 12
	mov		[rax], rdi
	mov		rax, 0
	ret
