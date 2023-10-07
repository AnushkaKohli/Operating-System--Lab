#include <stdio.h>
#include <unistd.h>
#include <semaphore.h>
#include <pthread.h>
#include <stdlib.h>
#define N 5

int buffer[N];
sem_t mutex, empty, full;

int in = 0, out = 0;
void *producer(void *m){
	printf("Enter the data: ");
	while(1){
		int nextprod;
		
		scanf("%d", &nextprod);
		sem_wait(&empty);
		sem_wait(&mutex);
		buffer[in] = nextprod;
		in = (in + 1) % N;
		sem_post(&mutex);
		sem_post(&full);
		sleep(1);
	}
}

void *consumer(void *m){
	while(1){
		sleep(1);
		sem_wait(&full);
		sem_wait(&mutex);
		int nextcon = buffer[out];
		out = (out + 1) % N;
		sem_post(&mutex);
		sem_post(&empty);
		printf("Consumed data from consumer is %d\n", nextcon);
	}
}

int main(){
	sem_init(&mutex, 0, 1);
	sem_init(&full, 0, 0);
	sem_init(&empty, 0, N);
	pthread_t t1, t2;
	pthread_create(&t1, NULL, producer, NULL);
	pthread_create(&t2, NULL, consumer, NULL);
	pthread_join(t1, NULL);
	pthread_join(t2, NULL);
	sem_destroy(&mutex);
	return 0;
}
