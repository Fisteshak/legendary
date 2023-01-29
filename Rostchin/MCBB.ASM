code segment
     assume cs:code,ds:code,ss:code
     org 100h
start: jmp init
       tab db '0123456789ABCDEF'
       ans1 db ' Free $'
       ans2 db ' Enviroment $'
       ans3 db ' Code $'
       ans4 db ' Data $'
       ansa db ' DOS $'
       z db 0
       include IO.asm
       hexint proc ;es-p
       mov cx,es
       mov ah,02h
       mov bh,0h
       push cx
            shr ch,4
            mov bl,ch
            mov dl,tab[bx]
            int 21h
            pop cx
       push cx
            and ch,0Fh
            mov bl,ch
            mov dl,tab[bx]
            int 21h
            pop cx
       push cx
            shr cl,4
            mov bl,cl
            mov dl,tab[bx]
            int 21h
            pop cx
       push cx
            and cl,0Fh
            mov bl,cl
            mov dl,tab[bx]
            int 21h
            pop cx
       mov dl,' '
       int 21h
       ret
       hexint endp
       okr proc
           push dx ds ax bx cx ;ax-cur dx-last
           mov ax,es:[1]
           cmp ax,0050h
           ja nnnext
           mov ah,09h
           mov dx,offset ansa
           int 21h
           jmp exo
nnnext:    cmp ax,0
           jz exo
           mov ds,ax
           mov ax,ds:[2ch]
           mov ds,ax
           mov dh,0h
           mov ah,0h
           mov bx,0h
cyco:
           mov al,ds:[bx]
           cmp ax,dx
           jz  nexto
           inc bx
           mov dl,al
           jmp short cyco
nexto:     add bx,2
cyco1:     mov dl,ds:[bx]
           inc bx
           cmp dl,0
           jz exo
           mov ah,02h
           int 21h
           jmp short cyco1
exo:       pop cx bx ax ds dx
       okr endp

       chc proc
           push ax dx
           cmp z,0
           jnz ex2
           mov ax,es:[1]
           dec ax
           mov dx,es
           cmp ax,dx
           jnz ex2
           mov z,1
           mov dx,offset ans3
           mov ah,09h
           int 21h
       ex2: pop dx ax
            ret
       chc endp

       che proc
           push ax dx ds
           cmp z,0
           jnz ex3
           push ds
           mov ds,es:[1]
           mov dx,ds:[2ch]
           pop ds
           dec dx
           mov ax,es
           cmp ax,dx
           jnz ex3
           mov z,1
           mov dx,offset ans2
           mov ah,09h
           int 21h
   ;        call okr
       ex3: pop ds dx ax
            ret
       che endp
       chf proc
           push ax dx
           cmp z,0
           jnz ex4
           mov ax,es:[1]
           cmp ax,0
           jnz ex4
           mov z,1
           mov dx,offset ans1
           mov ah,09h
           int 21h
       ex4: pop dx ax
            ret
       chf endp


init:
      mov ah,52h
      int 21h
      mov ax,es:[bx-2]
      mov es,ax   ;segment
cyc:  cmp byte ptr es:[0],'Z'
      jz off
      call hexint
      mov ax,es:[3]
      call writeint
      mov z,0
      call chf
      call che
      call chc
      cmp z,0
      jnz next
      push ax
      mov ah,09h
      mov dx,offset ans4
      int 21h
      pop ax
next: call okr
      mov ax,es
      add word ptr ax,es:[3]
      inc ax
      mov es,ax
      mov dl,' '
      push ax
      mov ah,02h
      int 21h
      mov dl,10
      int 21h
      pop ax
      jmp short cyc
off:  ret
code ends
end start