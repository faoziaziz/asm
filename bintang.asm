section .data
msg db 'Menampilkan 9 bintang : ',0xa
len equ $ -msg
hio db 0xa
s2 times 9 db '*'

section .text
global main

main:

	mov edx, len
	mov ecx, msg
	mov eax, 4
	mov ebx, 1
	int 0x80

	mov edx, 9
	mov eax, 4
	mov ebx, 1
	mov ecx, s2
	int 0x80
	
	mov edx, 1
	mov eax, 4
	mov ebx, 1
	mov ecx, hio
	int 0x80

	mov eax, 1
	int 0x80

