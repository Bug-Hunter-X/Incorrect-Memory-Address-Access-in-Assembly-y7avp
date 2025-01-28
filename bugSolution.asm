```assembly
section .data
    var dw 10 ; Correctly allocate memory and assign a value

section .bss
    result resd 1 ; Reserve space for the result

section .text
    global _start

_start:
    mov bx, var ;Correctly assign the address of the variable
    mov ax, [bx] ;Access the variable correctly
    add ax, 5 ; Add 5 to the value of the variable
    mov [result], ax ;Store the result
    mov eax, 1 ; sys_exit
    xor ebx, ebx ; exit code 0
    int 0x80
```