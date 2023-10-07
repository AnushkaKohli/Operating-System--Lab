#include <stdio.h>
#include <unistd.h>
#include <signal.h>

void signalHandler(int s){
	printf("Signal number %d occured\n", s);
}

int main(){
	signal(SIGINT, signalHandler);
	while(1){
		printf("Hello\n");
		sleep(1);
	}
	return 0;
}
