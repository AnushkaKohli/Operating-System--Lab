#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>
#include <sys/types.h>

int main(){
	int pid = 5, pid1, pid2;	
	pid = fork();
	if(pid < 0){
		printf("Fork Failure: Child process not created.\n");
		exit(0);
	}
	else if(pid == 0){ //Child process
		printf("First child\n");
		system("who");
	}
	else{ //Parent process
		pid1 = fork();
		if(pid1 == 0){
			printf("Second child\n");
			system("ls -l");
		}
		else{
			pid2 = fork();
				if(pid2 == 0){
					printf("Third child\n");
					system("date");
				}
				else{
					wait(NULL);
					printf("Good Bye!\n");
				}
		}
	}
	return 0;
}
