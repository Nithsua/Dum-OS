org 0x7c00

mov bx, GREET
call println

mov bx, BYE
call println

jmp $

%include "print_string.asm"

;Data Source
GREET:
	db "Hello!!!", 0
BYE:
	db "Bye, Shutting Down", 0

times 510-($-$$) db 0
dw 0xaa55
