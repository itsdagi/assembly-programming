section .data
    hello db 'Hello World!', 10
    helloLen equ $-hello

section .text
    global _start

_start:
    mov eax, 4       ; syscall number for sys_write (4)
    mov ebx, 1       ; file descriptor for stdout (1)
    mov ecx, hello   ; pointer to the message to write
    mov edx, helloLen; message length

    int 0x80         ; invoke the syscall

    mov eax, 1       ; syscall number for sys_exit (1)
    mov ebx, 0       ; exit status 0
    int 0x80         ; invoke the syscall
    
    ; Hellow world!
    ;explanation 

    ;(1) section .data - This section defines data that will be stored in memory.
    ;                in this case you define a string variable called `hello` containing "hello world!"
    ;                a new line character(10). The `helloLen` variable is defined to calculate the length
    ;                the string using `$` which represents the current adress in memory.`$-hello` calculates
    ;                lengh of the string by subtracting the starting adress of `hello` from the current adress.
    ;(2)

