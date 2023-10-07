#include <stdio.h>
#include <unistd.h>
#include <semaphore.h>
#include <pthread.h>

void *f1(void *m){
	while(1){
		for(int i = 1; i <= 5; i++){
			printf("%d\n", i);
			sleep(1);
		}
	}
}

void *f2(void *m){
	while(1){
		for(int i = 0; i < 5; i++){
			printf("%c\n", i+'A');
			sleep(1);
		}
	}
}

int main(){
	pthread_t t1, t2;
	pthread_create(&t1, NULL, f1, NULL);
	pthread_create(&t2, NULL, f2, NULL);
	pthread_join(t1, NULL);
	pthread_join(t2, NULL);
	return 0;
}
