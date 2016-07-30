[bits 32]
  extern printf ;For linux
  extern exit ;For linux
segment .data
  text db 'Vodka', 0xa
  len equ $-text
  sad equ 1 ;if you are sad change this value to 1. 0 if not. 
segment .text
  global main
main:
  mov eax, sad ; move varible to register
  cmp eax, 1 ;if(sad)
  jne end ;if not exit
  push text ;"function" argument
  call drink ;call function
  add esp, 8 ;cleaning stack

end: ;label
  push 0 ;exit(0);
  call exit ;C runtime EXIT

drink: ;"function" but for real this is label
  pop ebx ;tmp ebx have return register
  call printf ;C runtime print
  push ebx ;push return register
  ret ;return

