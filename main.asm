section .text
	global _start
_start:
	mov edx, len;
	mov ecx, msg;
	mov eax, 4
	mov ebx, 1
	int 0x80
	
	mov eax, 1
	int 0x80
section .data
msg db 'Hello, world', 0xa
len equ $ - msg
