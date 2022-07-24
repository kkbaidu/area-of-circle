section .data
msg db "Please enter enter the radius of the circle", 0  ;
len equ $- msg
resmsg db "The area of the circle is: ",0
lenres equ $- resmsg

section .bss
radius resb 3 
areacircle resb 10

section .text
  global _start
_start:
  mov rdx,len
  mov rsi,msg
  mov rdi,1
  mov rax,1
  syscall

  mov rdx,3
  mov rsi,radius
  mov rdi,2
  mov rax,0
  syscall

  xor rdi, rdi
  mov rdi, [radius]
  mov rsi, 3
  call _area
  mov [areacircle], rax

  mov rdx,10
  mov rsi,areacircle
  mov rdi,1
  mov rax,1
  syscall

  ;Exit code
  mov rdi
  mov rax, 60
  syscall

;Area function
_area:
  mov rax, rdi
  mov r8, rsi
  imul r8
  imul rax, rdi
  ret