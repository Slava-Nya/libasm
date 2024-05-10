global	ft_strcmp
section .text
ft_strcmp:
	push	r8
	push	rdx
	push	rcx
	mov		r8, 0
	mov		rax, 0
	mov		rdx, 0
	mov		rcx, 0
.loop:
	mov		dl, byte [rdi + r8]
	mov		cl, byte [rsi + r8]
	cmp		dl, 0
	je		.return
	cmp		cl, 0
	je		.return
	cmp		dl, cl
	jne		.return
	inc		r8
	jmp		.loop

.return:
	sub		rdx, rcx
	mov		rax, rdx
	pop		rcx
	pop		rdx
	pop		r8
	ret