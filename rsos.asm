[ORG 0x7C00]

mov ax, 0x0
mov ds, ax
cld

jmp main

hang:
    jmp hang

print:
    lodsb
    or al, 0
    jz done
    mov ah, 0x0E
    mov bh, 0x0
    int 0x10
    jmp print
done:
    ret

main:
    mov si, startMessage
    call print

startMessage db "Welcome to RetroSync OS", 0

times 510 - ($ - $$) db 0
db 0x55
db 0xAA
