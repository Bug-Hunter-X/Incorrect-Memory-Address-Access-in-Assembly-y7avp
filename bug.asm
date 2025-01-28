```assembly
mov ax, 1000h ;This is the incorrect address for the variable
add ax, [bx] ;Attempting to access the memory location pointed to by bx
```