nasm -f bin -o rsos.img rsos.asm
qemu-system-i386 -drive format=raw,file=rsos.img
