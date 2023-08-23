// 45. Write a program with a local variable and a global variable. Initialize both of them. The program should fork a child process and the child should increment both the variables by one. After this operation, both the parent and the child should print the values of the variables.

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int globalVariable = 10; // Global variable

int main()
{
    int localVariable = 20; // Local variable
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
        globalVariable++;
        localVariable++;
        printf("Child process\n");
        printf("Global variable: %d\n", globalVariable);
        printf("Local variable: %d\n", localVariable);
    }
    else
    {
        // Parent process
        sleep(1); // Wait for the child process to finish
        printf("Parent process\n");
        printf("Global variable: %d\n", globalVariable);
        printf("Local variable: %d\n", localVariable);
    }

    return 0;
}
