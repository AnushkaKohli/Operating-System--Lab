#include <stdio.h>
#include <unistd.h>
#include <signal.h>
#include <stdlib.h>
#include <sys/wait.h>
#include <sys/types.h>

int flag = 0;
//SIGCHLD Handler
void signalHandler(int s){
	flag = 1;
}

int main(int argc, char *argv[]){
	int delay = atoi(argv[1]);
	int pid = 5, child_pid;
	pid = fork();
	if(pid < 0){
		printf("Fork Failure: Child process not created.\n");
		exit(0);
	}
	else if(pid == 0){
		for(int i = 0; i < 5; i++){
			printf("First child %d\n",getpid());
			sleep(1);
		}
	}
	else{
		signal(SIGCHLD, signalHandler);
		sleep(delay);
		if(flag ==0){
			printf("Child process not terminated within the specified delay.\n");
			kill(child_pid, SIGKILL);
		}
		else{
			printf("Process termianted before");
		}	
	}
	return 0;
}

//write a program in c which takes a value of delay as command line argument and creates a child process. The parent process waits for the child process to finish its job up to the supplied delay value. if the child terminates within the delay the parent prints the termination status and pid of the child process. on not receiving from the child, it kills the child process forcefully.
