// 43. Implement an orphan process using fork.

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
        printf("Parent id 1 = %d\n", getppid());
        for (int i = 0; i < 5; i++)
        {
            printf("From child process\n");
            sleep(1);
        }
        // system("ps -x | head -2");
        printf("Parent id 2 = %d\n", getppid());
    }
    else
    {
        sleep(1);
        printf("From parent process\n");
    }
    return 0;
}