section .data
    msg1 db 'Sum = ', 0
    len1 equ $ - msg1

    msg2 db 'Product = ', 0
    len2 equ $ - msg2

    result db 0        ; space to _store answer_

    newline db 10      ; used to add space

section .text
    global _start

_start:
    ;  first number in AL e.g 2
    mov al, 2         
    ;  second number in BL e.g 8
    mov bl, 5
    
    

    ; ADDITION
    mov ah, al         ; copy first number in AH
    add ah, bl         ; AH = AL + BL

    add ah, '0'        ; turn into ASCII value
    mov [result], ah   ; save the answer

    ; show "Sum = "
    mov eax, 4
    mov ebx, 1
    mov ecx, msg1
    mov edx, len1
    int 0x80

    ; show the sum
    mov eax, 4
    mov ebx, 1
    mov ecx, result
    mov edx, 1
    int 0x80

    ; space 
    mov eax, 4
    mov ebx, 1
    mov ecx, newline
    mov edx, 1
    int 0x80


    ;MULTIPLICATION
    mov al, 1          ; load first number 1
    mov bl, 3          ; load second number 3
    mul bl             ; AL = AL * BL

    add al, '0'        ; turn into ASCII
    mov [result], al   ; save answer

    ; show "Product = "
    mov eax, 4
    mov ebx, 1
    mov ecx, msg2
    mov edx, len2
    int 0x80

    ; show the product
    mov eax, 4
    mov ebx, 1
    mov ecx, result
    mov edx, 1
    int 0x80

    ; exit the programme
    mov eax, 1
    mov ebx, 0
    int 0x80