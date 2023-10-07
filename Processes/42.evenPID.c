// 42. Write a program to kill all processes whose PID is even.

#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>

int main()
{
    int pid = 5, pid1, pid2;
    pid = fork();

    if (pid < 0)
    {
        printf("Fork failure: Child process not created\n");
        exit(1);
    }
    else if (pid == 0)
    {
        for (int i = 0; i < 10; i++)
        {
            printf("First child process\n");
            sleep(1);
        }
        if (pid % 2 == 0)
        {
            printf("Killing first child process\n");
            kill(pid, SIGKILL);
        }
    }
    else
    {
        pid1 = fork();
        if (pid1 == 0)
        {
            for (int i = 0; i < 10; i++)
            {
                printf("Second child process\n");
                sleep(1);
            }
            if (pid1 % 2 == 0)
            {
                printf("Killing second child process\n");
                kill(pid1, SIGKILL);
            }
        }
        else
        {
            pid2 = fork();
            if (pid2 == 0)
            {
                for (int i = 0; i < 10; i++)
                {
                    printf("Third child process\n");
                    sleep(1);
                }
                if (pid2 % 2 == 0)
                {
                    printf("Killing third child process\n");
                    kill(pid2, SIGKILL);
                }
            }
            else
            {
                sleep(10);
                printf("Parent process: All child processes finished.\n");
            }
        }
    }
    return 0;
}