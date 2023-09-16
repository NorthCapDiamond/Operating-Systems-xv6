#include "kernel/types.h"
#include "kernel/stat.h"
#include "user/user.h"

int main(int argc, char *argv[]){  
	int p[2];
	int size_of_message = 5;
	char message[size_of_message];

	pipe(p);

	if(fork() == 0){ // child

		read(p[0], message, size_of_message);
		close(p[0]);
		printf("Process number %d received message: %s\n", getpid(), message);


		write(p[1], "Pong", size_of_message);
		close(p[1]);

		exit(0);
	} else { //parent
		write(p[1], "Ping", size_of_message);
		close(p[1]);

		wait(0); // else there is nothing to stop parent from continuing the program (reading from input descriptor)

		read(p[0], message, size_of_message);
		close(p[0]);
		printf("Process number %d received message: %s\n", getpid(), message);

		exit(0);
	}
}