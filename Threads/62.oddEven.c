// Write a program to print the odd and even numbers in a range parallelly using two different Threads. The range should start from 0 and the end of the range should be taken from the user input and passed to the threads as argument.

#include <stdio.h>
#include <unistd.h>
#include <pthread.h>
#include <stdlib.h>

void *even(void *n){
	int x;
	x = *((int *)n);
	for(int i = 0; i < x; i++){
		if(i%2 == 0){
			printf("%d is even\n", i);
			sleep(1);
		}
	}
	return NULL;
}
void *odd(void *n){
	int x;
	x = *((int *)n);
	for(int i = 0; i < x; i++){
		if(i%2 != 0){
			printf("%d is odd\n", i);
			sleep(1);
		}
	}
	return NULL;
}

int main(){
	void *ret;
	pthread_t t1, t2;
	int n;
	printf("Enter range: ");
	scanf("%d", &n);
	pthread_create(&t1, NULL, even, (void *) &n);
	printf("Main is waiting for the thread\n");
	pthread_join(t1, NULL);
	pthread_create(&t2, NULL, odd, (void *) &n);
	pthread_join(t2, NULL);
	return 0;
}
