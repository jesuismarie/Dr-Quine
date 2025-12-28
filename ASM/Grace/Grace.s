%define FNAME "Grace/Grace_kid.s"
%define MODE "w"

%define CODE "%%define FNAME %2$cGrace/Grace_kid.s%2$c%1$c%%define MODE %2$cw%2$c%1$c%1$c%%define CODE %2$c%3$s%2$c%1$c%1$csection .rodata%1$c    str: db CODE, 0%1$c    mode: db MODE, 0%1$c%1$csection .data%1$c    fname: db FNAME, 0%1$c%1$c%%macro GRACE 0%1$csection .text%1$c    global main%1$c    extern fprintf%1$c    extern fopen%1$c    extern fclose%1$c%1$cmain:%1$c    push rbp%1$c    mov rbp, rsp%1$c%1$c    mov rdi, fname%1$c    mov rsi, mode%1$c    call fopen%1$c    push rax%1$c%1$c    mov rdi, rax%1$c    mov rsi, str%1$c    mov rdx, 10%1$c    mov rcx, 34%1$c    mov r8, str%1$c    xor al, al%1$c    call fprintf%1$c%1$c    pop rdi%1$c    call fclose%1$c%1$c    leave%1$c    ret%1$c%%endmacro%1$c%1$c; Grace comment%1$c%1$cGRACE%1$c"

section .rodata
    str: db CODE, 0
    mode: db MODE, 0

section .data
    fname: db FNAME, 0

%macro GRACE 0
section .text
    global main
    extern fprintf
    extern fopen
    extern fclose

main:
    push rbp
    mov rbp, rsp

    mov rdi, fname
    mov rsi, mode
    call fopen
    push rax

    mov rdi, rax
    mov rsi, str
    mov rdx, 10
    mov rcx, 34
    mov r8, str
    xor al, al
    call fprintf

    pop rdi
    call fclose

    leave
    ret
%endmacro

; Grace comment

GRACE
