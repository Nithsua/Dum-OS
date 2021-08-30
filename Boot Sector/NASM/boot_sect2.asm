org 0x7c00

mov ah, 0x0e 			;Scrolling teletype routine

mov al, secret_letter
int 0x10

mov al, [secret_letter]
int 0x10

;mov bx, secret_letter
;add bx, 0x7c00
;mov al, [bx] 
;int 0x10

mov al, [0x7c1e]
int 0x10

jmp $

secret_letter:
	db 'H'

times 510-($-$$) db 0
dw 0xaa55



