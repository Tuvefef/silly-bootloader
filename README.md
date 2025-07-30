# silly-bootloader

## summary ##

It's my first nasm project
It is a simple bootloader that uses BIOS functions to read and load 2 keys.
in real mode [16 bits].

## important ##

This project was done with the objective of learning at a low level
in the creation of bootloaders, kernels, drivers, etc.
This documentation can also serve to guide others who may also want to enter this world. 
As the project progresses I will document the updates.

## building the bootloader ##
it starts like everyone else
In this case it is automated using makefile 

### compile: ###
```
make all
```
command:
```
nasm -f bin core.asm -o core.bin
```
### execute: ###
```
make run
```
command:
```
qemu-system-i386 -fda core.bin
```

## result: ##
[two keys](https://raw.githubusercontent.com/Tuvefef/silly-bootloader/refs/heads/main/imgs/mii1.png)
