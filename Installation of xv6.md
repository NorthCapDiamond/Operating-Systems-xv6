# Operating-Systems-xv6
ITMO Labs on XV6

###How to install XV6 if you have Windows/Linux :###
https://github.com/Pivnoy/os-dev-env

##MAC OS (ARM too):

###1) Install qemu: ###
you can use brew for this. (https://docs.brew.sh/Installation)

```
$ brew install qemu

```
###2) Also you need to install RISC-V TOOLS: ###

```
$ brew install riscv-tools

```
(This may take a huge amount of time...)

###3) clone xv6 rep. ###
create a directory for this and run: 

```
$ git clone https://github.com/mit-pdos/xv6-riscv

```
###4) run xv6 with qemu: ###

```
$ cd xv6-riscv
$ make qemu

```


