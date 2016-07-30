# This is very simple assembly program.
### You need:
NASM, MinGW

Here is two versions for Windows, and for Linux.

### For Windows:
```sh
nasm -f win32 win.asm
gcc -s -o win win.obj
```
and run in cmd win.exe

### For Linux:
-(Linux calls)
```sh
nasm -f elf linux.asm
ld -m elf_i386 -s -o linux linux.o
```
and run in terminal linux (./linux command)  
-(C runtime)
```sh
nasm -f elf linuxc.asm
gcc -m32 -o linuxc linuxc.o
```
and run in terminal linuxc (./linuxc command)

### The same program but in C
Windows and Linux:
```sh
gcc -s -o asmc asmc.c
```

Windows version using C runtime  
Linux have two versions:  
1: Using Linux calls  
2: Using C runtime 
