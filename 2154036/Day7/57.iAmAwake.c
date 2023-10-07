#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <signal.h>


//SIGCHLD Handler
void signalHandler(int s){
	printf("I am awake by signal %d(SIGUSR1)\n", s);
}

//SIGINT Handler
void signalHandler1(int s){
	printf("I am awake by signal %d(SIGUSR2)\n", s);
}

int main(){
	int pid1, pid2;
	pid1 = fork();
	if(pid1 < 0){
		printf("Fork Failure: Parent not created.\n");
		exit(0);
	}
	
	//Child is sending signal to parent. Parent runs long after the child has run.
	else if(pid1 == 0){
		(void)signal(SIGUSR1, signalHandler);
		while(1){
			sleep(1); 
			printf("I am %d\n",getppid());
		}
	}
	else{
		pid2 = fork();
		if(pid2 < 0){
			printf("Fork Failure: Parent not created.\n");
			exit(0);
		}
		else if(pid2 == 0){
			(void)signal(SIGUSR2, signalHandler1);
			while(1){
				sleep(1); 
				printf("I am %d\n",getppid());
			}
		}
		else {
			sleep(3);
			(void)kill(pid1, SIGUSR1);
			sleep(1);
			(void)kill(pid2, SIGUSR2);
			sleep(2);
			(void)kill(pid1, SIGINT);
			(void)kill(pid2, SIGINT);
		}
	}
	return 0;
}
