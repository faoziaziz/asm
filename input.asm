section .data

pesan1 db 'Masukkan bilangan : '
len1 equ $- pesan1
pesan2 db 'bilangan yang anda masukkan : '
len2 equ $-pesan2

section .bss
num resb 5

section .text

global main
main:
	mov eax, 4
	mov ebx, 1
	mov edx, len1
	mov ecx, pesan1
	int 0x80

	mov eax, 3
	mov ebx, 2
	mov edx, 5
	mov ecx, num
	int 0x80

	mov eax, 4
	mov ebx, 1
	mov edx, len2
	mov ecx, pesan2
	int 0x80
	
	mov eax, 4
	mov ebx, 1
	mov edx, 5
	mov ecx, num
	int 0x80
	
	;exit
	mov eax, 1
	mov ebx, 0
	int 0x80

