#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>
#include <sys/types.h>

int main(){
	int pid = 5;	
	pid = vfork();
	if(pid < 0){
		printf("Fork Failure: Child process not created.\n");
		exit(0);
	}
	else if(pid == 0){ //Child process
		printf("From child process\n");
		printf("Child process id = %d\n", getpid());
	}
	else{ //Parent process
		//wait(NULL);
		system("ps -x | grep \" \"Z[\" \"+]");
	}

	return 0;
}
