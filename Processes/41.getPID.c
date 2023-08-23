// 41. Write a program to get the PID of parent and child process.

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main()
{
    int pid = 5;
    pid = fork();
    if (pid < 0)
    {
        printf("Fork failure: Child process not created\n");
        exit(1);
    }
    else if (pid == 0)
    {
        printf("From child process\n");
        printf("Child process PID: %d\n", getpid());
        printf("Parent process PID: %d\n", getppid());
    }
    else
    {
        printf("From parent process\n");
        printf("Child process PID: %d\n", pid);
        printf("Parent process PID: %d\n", getpid());
    }
    return 0;
}