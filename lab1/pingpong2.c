#include "kernel/types.h"
#include "kernel/types.h"
#include "kernel/stat.h"
#include "user/user.h"

int main(int argc, char *argv[]){  
	int p[2];
	int p2[2];
	int size_of_message = 5;
	char message[size_of_message];

	if (!(pipe(p)) && !(pipe(p2))){
		if(fork() == 0){ // child
			read(p[0], message, size_of_message);
			close(p[0]);
			printf("Process number %d received message: %s\n", getpid(), message);


			write(p2[1], "Pong", size_of_message);
			close(p2[1]);

			exit(0);
		} else { //parent
			write(p[1], "Ping", size_of_message);
			close(p[1]);

			read(p2[0], message, size_of_message);
			close(p2[0]);
			printf("Process number %d received message: %s\n", getpid(), message);

			exit(0);
		}
	}
	exit(0);
}