;
;	program assembly menggunakan linux Ubuntu 32 bit
;	adaptasi dari http://asm.sourceforge.net/intro/hello.html 
;       by Mark Loiseau
;
;	nama file : hello.asm
;	cara pakainya
;	nasm -f elf -o hello.o hello.asm
;	ld -o hello hello.o
;	./hello
global _start:
section .text
_start:

	; sys_write(stdout, message, length)
	; dalam memanggil write ada 3 parameter yang harus di perhatikan
	; yaitu stout (nomer buat output), message(stringnya),
	; serta panjang string

mov eax, 4 ; pemanggilan fungsi  sys_write 
mov ebx, 1 ; perintah menampilkan (stdout)
mov ecx, message ; string yang akan ditampilkan
mov edx, length, ; panjang string 
int 80h  ; akhir pemanggilan fungsi kayak nilai return

mov eax, 1 ; pemanggilan fungsi exit
mov ebx, 0 ; program exit tanpa erorr kayak return 0 pada bahasa c
int 80h  

section .data  ; deklarasi variable
message : db 'Helloworld!', 0x0A ; 0x0A itu enter
length: equ $-message ; definisi panjangnya sama kaya message
