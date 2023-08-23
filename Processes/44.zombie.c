// 44. Implement a zombie process using fork.

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>
#include <sys/types.h>

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
        printf("From child process\n");
        printf("Child process ID: %d\n", getpid());
    }
    else
    {
        system("ps -x | grep \" \"Z[\" \"]");
    }
    return 0;
}