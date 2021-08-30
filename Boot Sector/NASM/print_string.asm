println:
	push bx
	mov ah, 0x0e
	mov al, [bx]
	jmp loop_condition
	loop_start:
	    int 0x10
		inc bx
		mov al, [bx]
	loop_condition:
		cmp al, 0
		jn loop_start
	mov al, 0x0a
	int 0x10
	pop bx
	ret
		
