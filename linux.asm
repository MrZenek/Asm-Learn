[bits 32]
segment .data
  text db 'Vodka', 0xa
  len equ $-text
  sad equ 1 ;if you are sad change this value to 1. 0 if not. 
segment .text
  global _main:
_main:
  mov eax, sad ; move varible to register
  cmp eax, 1 ;if(sad)
  jne _exit ;if not exit
  push text ;"function" argument
  call drink ;call function
  add esp, 8 ;cleaning stack

_exit: ;label
  mov eax, 1 ;linux exit call
  int 80h ;linux call

drink: ;"function" but for real this is label
  add esp, 4 ;change esp to text
  mov eax, 4 ;linux stuff for print text
  mov ebx, 1
  pop ecx ;mov argument from stack to register
  mov edx, len
  int 80h
  sub esp, 8 ;go back to variable which call push to stack (why 8, because we remove 4 byte, and pop remove another 4 byte from stack)
  ret ;return

