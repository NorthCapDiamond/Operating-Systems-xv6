int dump2(int pid, int register_num, uint64* return_value){
  struct proc* p = myproc();
  // register_num validation: 
  if (register_num < 2 || register_num > 11){
    return -3;
  } 

  for (struct proc* pointer = proc; pointer < &proc[NCPU]; pointer++){
    proc->lock.locked = 1;

    // searching for correct pid
    if(pointer->pid == pid){
      // checking the roots for reading the registers
      if(p->pid != pointer->pid && p->pid!= pointer->parent->pid){ 
        proc->lock.locked = 0;
        return -1;
      }

      // trying to read register
      
      uint64* reg_pointer = &(pointer->trapframe->s2) + (uint64)(register_num) - 2; 

      //write the answer

      if(!copyout(p->pagetable, *return_value, (char*) reg_pointer, 8)){
        proc->lock.locked = 0;
        return 0;
      }
      else{
        proc->lock.locked = 0;
        return -4;
      }

    }
    proc->lock.locked = 0;
  }
    return -2;
}
