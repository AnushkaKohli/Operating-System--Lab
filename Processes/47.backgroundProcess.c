// 47. Write a program to create a process which will run as a background process for fifty seconds and at the time of execution it will print the system information.

#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>
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
        // Child process
        sleep(50); // Run as a background process for fifty seconds
        printf("Child process: System information\n");
        system("uname -a"); // Execute the "uname -a" command
        exit(0);
    }
    else
    {
        // Parent process
        printf("Parent process: Background process started.\n");
        printf("Parent process: Waiting for the background process to finish...\n");
        wait(NULL); // Wait for the child process to finish
        printf("Parent process: Background process finished.\n");
    }

    return 0;
}
