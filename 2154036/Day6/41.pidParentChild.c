#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main(){
	int pid = 5;	
	pid = fork();
	if(pid < 0){
		printf("Fork Failure: Child process not created.\n");
		exit(0);
	}
	else if(pid == 0){ //Child process
		printf("From child process\n");
		printf("Child id = %d\n", getpid());
		printf("Parent id = %d\n", getppid());
	}
	else{ //Parent process
		printf("From parent process\n");
		printf("Child id = %d\n", pid);
		printf("Parent id = %d\n", getpid());	
	}

	return 0;
}
