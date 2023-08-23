// 50. Write a program that creates two child processes. Each of the child process prints numbers from 1 to 10. Each time a child prints a number it also prints its own PID and parent PID. The parent waits for both of its child to finish execution and prints “Good Bye” before exiting.

#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>

int main()
{
    int pid = 5, pid1;
    pid = fork();

    if (pid < 0)
    {
        printf("Fork failure: Child process not created\n");
        exit(1);
    }
    else if (pid == 0)
    {
        for (int i = 1; i <= 10; i++)
        {
            printf("Num: %d\tChild: %d\tParent: %d\n", i, getpid(), getppid());
            sleep(1);
        }
    }
    else
    {
        pid1 = fork();
        if (pid1 == 0)
        {
            for (int i = 1; i <= 10; i++)
            {
                printf("Num: %d\tChild: %d\tParent: %d\n", i, getpid(), getppid());
                sleep(1);
            }
        }
        else
        {
            wait(NULL);
            printf("Good Bye\n");
        }
    }
    return 0;
}