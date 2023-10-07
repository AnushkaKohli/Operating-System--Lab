#include <stdio.h>
#include <unistd.h>
#include <pthread.h>
#include <stdlib.h>

void *th_fn(void *m){
	printf("Received value = %s\n", (char *)m);
	sleep(3);
	return "From thread";
}

int main(){
	char *msg = "Hello";
	void *ret;
	pthread_t t1;
	pthread_create(&t1, NULL, th_fn, (void *) msg);
	printf("Main is waiting for the thread\n");
	pthread_join(t1, &ret);
	pthread_create(&t1, NULL, th_fn, (void *) ret);
	printf("Returned value = %p\n", ret);
	return 0;
}
