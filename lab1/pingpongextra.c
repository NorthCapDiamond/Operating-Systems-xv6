#include "kernel/types.h"
#include "user.h"

#define PingPongSize 5

void* realloc(void* str_ptr, uint64 size){
    if(!str_ptr){
        str_ptr = malloc(size);
        return str_ptr;
    } 

    void* new_str_ptr;
    new_str_ptr = malloc(size);
    memcpy(new_str_ptr, str_ptr, size);
    free(str_ptr);
    return new_str_ptr;
}

char*
getstring(char *buffer)
{
  int i = 0;
  char c = '=';

  while(c != '\n'){
    if(read(0, &c, 1) != 1){
        goto finish;
    }

    buffer = realloc(buffer, (i + 1) * sizeof(char));
    buffer[i] = c;
    i++;
  }

  finish:
  buffer = realloc(buffer, (i + 1) * sizeof(char));
  buffer[i] = '\0';
  return buffer;
}



int main(uint argc, char** argv[]){
    int p[2];
    int p2[2];
    char* message = malloc(PingPongSize);
    if (pipe(p) == -1 || pipe(p2) == -1){
        exit(-1);
    }
   

    int pid = fork();
    if (pid < 0){
        printf("fork failed");
        exit(1);
    }

    if(pid == 0){
        read(p[0], message, sizeof(message));
        close(p[0]);
        printf("Process number %d received message: %s\n", getpid(), message);

        printf("Enter your message\n");
        write(p2[1], getstring(message), sizeof(message));
        close(p2[1]);

        exit(0);
    }
    else{
        printf("Enter your message\n");
        write(p[1], getstring(message), sizeof(message));
        close(p[1]);

        read(p2[0], message, sizeof(message));
        close(p2[0]);
        printf("Process number %d received message: %s\n", getpid(), message);

        exit(0);
    }
    
    exit(0);
}