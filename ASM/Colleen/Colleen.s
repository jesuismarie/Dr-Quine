; Outside comment

section .rodata
	str: db "; Outside comment%1$c%1$csection .rodata%1$c	str: db %2$c%3$s%2$c, 0%1$c%1$csection .text%1$c	global main%1$c	extern printf%1$c%1$cmain:%1$c	push rbp%1$c	mov rbp, rsp%1$c	call print_quine%1$c	leave%1$c	ret%1$c%1$cprint_quine:%1$c	mov rdi, str%1$c	mov rsi, 10%1$c	mov rdx, 34%1$c	mov rcx, str%1$c	xor rax, rax%1$c	; Inside comment%1$c	call printf%1$c	ret%1$c", 0

section .text
	global main
	extern printf

main:
	push rbp
	mov rbp, rsp
	call print_quine
	leave
	ret

print_quine:
	mov rdi, str
	mov rsi, 10
	mov rdx, 34
	mov rcx, str
	xor rax, rax
	; Inside comment
	call printf
	ret
