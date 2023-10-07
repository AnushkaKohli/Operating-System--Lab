#include <stdio.h>
#include <unistd.h>
#include <semaphore.h>
#include <pthread.h>
#include <stdlib.h>

sem_t mutex;
void *f1(void *m){
	while(1){
		sem_wait(&mutex);
		for(int i = 1; i <= 5; i++){
			printf("%d\n", i);
			sleep(1);
		}
		sem_post(&mutex);
		sleep(1);
	}
}

void *f2(void *m){
	while(1){
		sem_wait(&mutex);
		for(int i = 0; i < 5; i++){
			printf("%c\n", i+'A');
			sleep(1);
		}
		sem_post(&mutex);
		sleep(1);
	}
}

int main(){
	sem_init(&mutex, 0, 1);
	pthread_t t1, t2;
	pthread_create(&t1, NULL, f1, NULL);
	pthread_create(&t2, NULL, f2, NULL);
	pthread_join(t1, NULL);
	pthread_join(t2, NULL);
	sem_destroy(&mutex);
	return 0;
}
