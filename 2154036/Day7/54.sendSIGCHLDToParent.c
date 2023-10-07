#include <stdio.h>
#include <unistd.h>
#include <signal.h>

void signalHandler(int s){
	printf("Signal number %d occured\n", s);
}

int main(){
	signal(SIGCHLD, signalHandler);
	int pid;
	pid = fork();
	//Child is sending signal to parent. Parent runs long after the child has run.
	if(pid == 0){
		//kill is used to send the signal from one process to another
		//kill can be used to kill if SIGINT is sent
		//kill can be used to suicide if SIGINT is sent to own process
		kill(getppid(), SIGCHLD);
		printf("Hello\n");
	}
	else{
		//if signal is changed here, the child may complete executing before the signal handler is changed so we may not see the acknowledgement from signal handler. We can write sleep(1) in child for normal execution.
		sleep(2);
		printf("From parent process\n");
		sleep(1);
	}
	return 0;
}
