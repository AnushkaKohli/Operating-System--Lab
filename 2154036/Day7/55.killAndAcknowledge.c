#include <stdio.h>
#include <unistd.h>
#include <signal.h>

//SIGCHLD Handler
void signalHandler(int s){
	printf("Signal number %d occured for %d\n", s, getpid());
}

//SIGINT Handler
void signalHandler1(int s){
	printf("Signal number %d occured for %d\n", s, getpid());
	signal(SIGINT, SIG_DFL);
	kill(getpid(), SIGINT);
}

int main(){
	int pid, i;
	pid = fork();
	//Child is sending signal to parent. Parent runs long after the child has run.
	if(pid == 0){
		signal(SIGINT, signalHandler1);
		for(i = 0; i < 10; i++){
			printf("%d\n",getpid());
			sleep(1); 
		}
	}
	else{
		signal(SIGCHLD, signalHandler);
		sleep(3);
		kill(pid, SIGINT);
		printf("Parent id: %d\n", getpid());
		sleep(2);
	}
	return 0;
}
