section .rodata
	str: db "section .rodata%1$c	str: db %2$c%4$s%2$c, 0%1$c	fname_fmt: db %2$cSully/Sully_%%d.s%2$c, 0%1$c	cmd_asm: db %2$cnasm -f elf64 Sully/Sully_%%d.s -o Sully/Sully_%%d.o && gcc -Wall -Wextra -Werror -no-pie -o Sully/Sully_%%d Sully/Sully_%%d.o%2$c, 0%1$c	cmd_run: db %2$c./Sully/Sully_%%d%2$c, 0%1$c	mode: db %2$cw%2$c, 0%1$c%1$csection .data%1$c	i: dd %3$d%1$c%1$csection .text%1$c	global main%1$c	extern fprintf%1$c	extern fopen%1$c	extern fclose%1$c	extern sprintf%1$c	extern system%1$c%1$cmain:%1$c	push rbp%1$c	mov rbp, rsp%1$c	sub rsp, 128%1$c%1$c	mov eax, [rel i]%1$c	cmp eax, 0%1$c	jle .done%1$c%1$c	lea rdi, [rbp - 64]%1$c	lea rsi, [rel fname_fmt]%1$c	mov edx, eax%1$c	dec edx%1$c	xor rax, rax%1$c	call sprintf%1$c%1$c	lea rdi, [rbp - 64]%1$c	lea rsi, [rel mode]%1$c	call fopen%1$c	test rax, rax%1$c	jz .done%1$c	push rax%1$c	push rax%1$c%1$c	mov rdi, rax%1$c	lea rsi, [rel str]%1$c	mov edx, 10%1$c	mov ecx, 34%1$c	mov r8d, [rel i]%1$c	dec r8d%1$c	lea r9, [rel str]%1$c	xor al, al%1$c	call fprintf%1$c%1$c	pop rax%1$c	pop rdi%1$c	call fclose%1$c%1$c	lea rdi, [rbp - 128]%1$c	lea rsi, [rel cmd_asm]%1$c	mov edx, [rel i]%1$c	dec edx%1$c	mov ecx, edx%1$c	mov r8d, edx%1$c	mov r9d, edx%1$c	push rdx%1$c	push rdx%1$c	xor rax, rax%1$c	call sprintf%1$c	add rsp, 16%1$c%1$c	lea rdi, [rbp - 128]%1$c	call system%1$c%1$c	mov eax, [rel i]%1$c	dec eax%1$c	cmp eax, 0%1$c	jle .done%1$c%1$c	lea rdi, [rbp - 64]%1$c	lea rsi, [rel cmd_run]%1$c	mov edx, eax%1$c	xor rax, rax%1$c	call sprintf%1$c%1$c	lea rdi, [rbp - 64]%1$c	call system%1$c%1$c.done:%1$c	xor rax, rax%1$c	leave%1$c	ret%1$c", 0
	fname_fmt: db "Sully/Sully_%d.s", 0
	cmd_asm: db "nasm -f elf64 Sully/Sully_%d.s -o Sully/Sully_%d.o && gcc -Wall -Wextra -Werror -no-pie -o Sully/Sully_%d Sully/Sully_%d.o", 0
	cmd_run: db "./Sully/Sully_%d", 0
	mode: db "w", 0

section .data
	i: dd 5

section .text
	global main
	extern fprintf
	extern fopen
	extern fclose
	extern sprintf
	extern system

main:
	push rbp
	mov rbp, rsp
	sub rsp, 128

	mov eax, [rel i]
	cmp eax, 0
	jle .done

	lea rdi, [rbp - 64]
	lea rsi, [rel fname_fmt]
	mov edx, eax
	dec edx
	xor rax, rax
	call sprintf

	lea rdi, [rbp - 64]
	lea rsi, [rel mode]
	call fopen
	test rax, rax
	jz .done
	push rax
	push rax

	mov rdi, rax
	lea rsi, [rel str]
	mov edx, 10
	mov ecx, 34
	mov r8d, [rel i]
	dec r8d
	lea r9, [rel str]
	xor al, al
	call fprintf

	pop rax
	pop rdi
	call fclose

	lea rdi, [rbp - 128]
	lea rsi, [rel cmd_asm]
	mov edx, [rel i]
	dec edx
	mov ecx, edx
	mov r8d, edx
	mov r9d, edx
	push rdx
	push rdx
	xor rax, rax
	call sprintf
	add rsp, 16

	lea rdi, [rbp - 128]
	call system

	mov eax, [rel i]
	dec eax
	cmp eax, 0
	jle .done

	lea rdi, [rbp - 64]
	lea rsi, [rel cmd_run]
	mov edx, eax
	xor rax, rax
	call sprintf

	lea rdi, [rbp - 64]
	call system

.done:
	xor rax, rax
	leave
	ret
