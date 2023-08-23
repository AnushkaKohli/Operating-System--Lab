// 46. Implement the assignment no. 47 using vfork for spawning the child.

#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>

int main()
{
    int pid = 5;
    pid = vfork();

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
        execl("/usr/bin/uname", "uname", "-a", NULL); // Execute the "uname -a" command
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
