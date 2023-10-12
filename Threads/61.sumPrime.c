// Write a multi-threaded program where the main thread gets an integer number range from the user and then creates two child threads; one thread calculates the sum of all numbers in the range and prints it, and the second thread finds prime numbers in the range and prints them. The child thread must terminate by returning a value. The parent thread must wait for the child threads to finish, and it must also print the return values of the child threads.

#include <stdio.h>
#include <unistd.h>
#include <pthread.h>
#include <stdlib.h>

int sum(void *n){
	int s= 0;
	for(int i = 1; i<= *(int *) n; i++)
		s += *((int *)n + i);
	return s;
}
void *prime(void *n){
	int z;
	for(int i = 1; i<= *(int *) n; i++){
		z = *((int *)n + i);
		int flag =0;
		if(z == 0 || z == 1)
			flag = 1;
		for(int j = 2; j <= z/2; j++){
			if(z%j == 0){
				flag = 1;
				break;
			}
		}
		if(flag == 0)
			printf("%d is prime\n", z);
		else 
			printf("%d is not prime\n", z);
	}
	return NULL;
}

int main(){
	void *ret;
	pthread_t t1, t2;
	int n[50], s, i;
	printf("Enter size and elements of array: ");
	scanf("%d", &n[0]);
	for(i = 1; i <= n[0]; i++)
		scanf("%d", &n[i]);
	pthread_create(&t1, NULL, (void *) &sum, (void *) n);
	printf("Main is waiting for the thread\n");
	pthread_join(t1, (void *)&s);
	pthread_create(&t2, NULL, prime, (void *) n);
	pthread_join(t2, NULL);
	printf("Sum of elements is %d\n", s);
	return 0;
}
