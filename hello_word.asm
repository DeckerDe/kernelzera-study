section .data
message: db 'Hello, world!', 0xa, 0xd

section .text

global _start:
_start:
	mov eax, 4 	 ; syscall write number
	mov ebx, 1     	 ; where we want to write the bytes, (stdout = 1)
	mov ecx, message ; address of string init
	mov edx, 15 	 ; byte qty
	int 0x80 	 ; calls syscall (interrupt)
	
	mov eax, 1 	 ; syscall exit
        int 0x80         ; call syscall
