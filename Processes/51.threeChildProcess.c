// 51. Write a program that creates three child processes. The first child process executes the command “who”, the second child process executes the command “ls -l” and the third child process executes the command “date”. The parent process waits for all the child processes to finish and prints the termination status of the child.

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
        printf("First child process: Executing 'who' command\n");
        system("who");
    }
    else
    {
        pid1 = fork();
        if (pid1 == 0)
        {
            printf("Second child process: Executing 'ls -l' command\n");
            system("ls -l");
        }
        else
        {
            pid2 = fork();
            if (pid2 == 0)
            {
                printf("Third child process: Executing 'date' command\n");
                system("date");
            }
            else
            {
                wait(NULL);
                wait(NULL);
                wait(NULL);
                printf("Parent process: All child processes finished.\n");
            }
        }
    }
    return 0;
}