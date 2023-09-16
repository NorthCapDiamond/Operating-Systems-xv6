# Operating-Systems-xv6
ITMO Labs on XV6

### How to install XV6 if you have Windows/Linux:
https://github.com/Pivnoy/os-dev-env

## MAC OS (ARM too):

### 1) Install qemu ☺️:
you can use brew for this. (https://docs.brew.sh/Installation)

```
$ brew install qemu

```
### 2) Also you need to install RISC-V TOOLS 😩:

```
$ brew install riscv-tools

```
(This may take a huge amount of time...)

### 3) clone xv6 rep 😍. 
create a directory for this and run: 

```
$ git clone https://github.com/mit-pdos/xv6-riscv

```
### 4) run xv6 with qemu 👌:

```
$ cd xv6-riscv
$ make qemu

```

### Check if it actually works...
```
$ ls
.              1 1 1024
..             1 1 1024
README         2 2 2305
cat            2 3 32952
echo           2 4 31840
forktest       2 5 15872
grep           2 6 36392
init           2 7 32304
kill           2 8 31760
ln             2 9 31576
ls             2 10 34896
mkdir          2 11 31824
rm             2 12 31800
sh             2 13 54392
stressfs       2 14 32680
usertests      2 15 180440
grind          2 16 47568
wc             2 17 33880
zombie         2 18 31176
console        3 19 0
```
## 😎😎😎


