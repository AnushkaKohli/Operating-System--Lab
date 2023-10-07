#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>
#include <sys/types.h>

int main(){
	int pid = 5, pid1;	
	pid = fork();
	if(pid < 0){
		printf("Fork Failure: Child process not created.\n");
		exit(0);
	}
	else if(pid == 0){ //Child process
		for (int i = 1; i <= 10; i++){
			printf("Num: %d\tChild id: %d\tParent id: %d\n", i, getpid(), getppid());
			sleep(1);
		}
	}
	else{ //Parent process
		pid1 = fork();
			if(pid1 == 0){
				for (int i = 1; i <= 10; i++){
				printf("Num: %d\tChild id: %d\tParent id: %d\n", i, getpid(), getppid());
				sleep(1);
			}
		}
		else{
			wait(NULL);
			printf("Good Bye!\n");
		}	
	}

	return 0;
}
