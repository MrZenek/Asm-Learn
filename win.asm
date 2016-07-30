[bits 32]
  extern _printf
  extern _exit
segment .data
  text db 'Vodka', 0
  len equ $-text
  sad equ 1 ;if you are sad change this value to 1. 0 if not. 
segment .text
  global _main
_main:
  mov eax, sad ; move varible to register
  cmp eax, 1 ;if(sad)
  jne _end ;if not exit
  push text ;"function" argument
  call drink ;call function
  add esp, 8 ;cleaning stack

_end: ;label
  mov eax, 1 ;C runtime EXIT
  push 0
  call _exit

drink: ;"function" but for real this is label
  pop ebx ;tmp ebx have return register
  call _printf ;C runtime print
  push ebx ;push return register
  ret ;return
