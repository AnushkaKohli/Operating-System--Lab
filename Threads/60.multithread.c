// 60. Implement the multithread concept with a program

#include <stdio.h>
#include <unistd.h>
#include <pthread.h>
#include <stdlib.h>

// The pthread_join() function takes two arguments:

// pthread_t thread: This is the ID of the thread that the calling thread will wait for.
// void **retval: This is a pointer to a location where the exit status of the joined thread will be stored. If the thread was canceled, PTHREAD_CANCELED will be placed in the location pointed to by retval. If retval is NULL, the exit status will not be stored.
// The pthread_join() function returns 0 on success, and an error number on failure

void *th_fn(void *m)
{
	printf("Received value = %s\n", (char *)m);
	sleep(3);
	return "From thread";
}

int main()
{
	char *msg = "Hello";
	void *ret;
	pthread_t t1;
	//  A new thread t1 is created using the pthread_create() function. This function takes four arguments: a pointer to a pthread_t variable, a pointer to a pthread_attr_t variable (which is set to NULL to use default thread attributes), a pointer to the function that the thread will execute, and a void pointer to the argument that the function will receive. In this case, the function is th_fn and the argument is the string "Hello"
	pthread_create(&t1, NULL, th_fn, (void *)msg);
	printf("Main is waiting for the thread\n");
	// The main thread waits for the created thread to finish using pthread_join. It stores the return value of the thread in the ret variable. In this case, ret will contain the string "From thread" since that's what th_fn returns.
	pthread_join(t1, &ret);
	pthread_create(&t1, NULL, th_fn, (void *)ret);
	// he main thread prints the value of ret using the %p format specifier, which displays the memory address. It will print the memory address where "From thread" is stored.
	printf("Returned value = %p\n", ret);
	return 0;
}
