%include "../include/io.mac"

extern ant_permissions

extern printf
global check_permission

section .text

check_permission:
    ;; DO NOT MODIFY
    push    ebp
    mov     ebp, esp
    pusha

    mov     eax, [ebp + 8]  ; id and permission
    mov     ebx, [ebp + 12] ; address to return the result
    ;; DO NOT MODIFY

    ; salvez id-ul si salile
    mov ecx, eax 
    ; extrag id-ul furnicii
    shr ecx, 24 

    mov edx, eax
    ; separ cei 24 de biti
    and edx, 0xFFFFFF 

    ; accesez vectorul
    mov eax, [ant_permissions + ecx * 4]
    and eax, edx
    ; verific daca sala poate fi rezervata
    cmp eax, edx 
    jne not_reserved

    ; sala poate fi rezervata
    mov dword [ebx], 1 
    jmp end

    ; sala nu poate fi rezervata
not_reserved:
    mov dword [ebx], 0 
    
end:
    ;; DO NOT MODIFY

    popa
    leave
    ret
    
    ;; DO NOT MODIFY
