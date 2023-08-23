// 48.  Display the process in the system every thirty seconds but five times.

// not sure about sol

#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>

int main()
{
    int i;
    for (i = 0; i < 5; i++)
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
            printf("Child Process\n");
        }
        else
        {
            // Parent process
            printf("Parent Process\n");
            sleep(30);  // Wait for 30 seconds
            wait(NULL); // Wait for the child process to finish
        }
    }

    return 0;
}
