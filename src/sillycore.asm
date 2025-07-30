[bits    16]
[org 0x7c00]

%include "progm/macros.inc"     ;; macros

start:
    jmp main

main:
    cli
    xor ax, ax
    mov ss, ax
    mov sp, 0x7c00
    sti

    call gchar
    call gkeys

    jmp $

gchar:
    mov ah, fchar
    mov si, gmsg1
    
.gloop:
    lodsb
    or al, al 
    jz .gh
    int fvintr
    jmp .gloop

.gh:
    ret

%include "progm/rts.inc"    ;; routine to read two keys using bios operations

gmsg1:
    db "keys: ", fnline, 0

times 510 - ($ - $$) db 0
dw 0xaa55