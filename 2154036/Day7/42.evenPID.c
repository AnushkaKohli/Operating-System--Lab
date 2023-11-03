#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>
#include <sys/types.h>

int main()
{
	int pid = 5, pid1, pid2;
	pid = fork();
	if (pid < 0)
	{
		printf("Fork Failure: Child process not created.\n");
		exit(0);
	}
	else if (pid == 0)
	{ // Child process
		for (int i = 0; i < 10; i++)
		{
			printf("First child %d\n", getpid());
			sleep(1);
		}
	}
	else
	{ // Parent process
		pid1 = fork();
		if (pid1 == 0)
		{
			for (int i = 0; i < 10; i++)
			{
				printf("Second child %d\n", getpid());
				sleep(1);
			}
		}
		else
		{
			pid2 = fork();
			if (pid2 == 0)
			{
				for (int i = 0; i < 10; i++)
				{
					printf("Third child %d\n", getpid());
					sleep(1);
				}
			}
			else
			{
				sleep(3);
				if (pid % 2 == 0)
					/* The `kill(pid, SIGINT);` statement is sending a SIGINT signal to the process with the specified process ID (pid). */
					kill(pid, SIGINT);
				if (pid1 % 2 == 0)
					kill(pid1, SIGINT);
				if (pid2 % 2 == 0)
					kill(pid2, SIGINT);
			}
		}
	}
	return 0;
}
