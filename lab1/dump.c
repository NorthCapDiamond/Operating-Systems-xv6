int dump(){
  struct proc *p = myproc();
  uint32 index = 2;
  for(uint64* i = &(p->trapframe->s2); i <= &(p->trapframe->s11); i++){ 
    printf("s%d, value: %d\n", index, *((uint32*) i));
    index++;
  }
  return 0;
}