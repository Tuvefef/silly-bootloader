gkeys:
    mov ah, fchang
    int     frchar
    mov ah, fchar
    int     fvintr

    mov ah, fchang
    int     frchar
    mov ah, fchar
    int     fvintr

    ret