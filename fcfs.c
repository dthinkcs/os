#include<stdio.h>
#include <stdlib.h>
typedef struct Process{

    int pid;
    int arrival_time;
    int execution_time;

} Process;

void printProcesses(Process* process, int n)
{
    int i = 0;
    for (i = 0; i < n; i++)
    {
        printf("%d %d %d\n", process[i].pid, process[i].arrival_time, process[i].execution_time);
    }
}

int comparator(const void *p, const void *q)
{
    int l = ((struct Process *)p)->arrival_time;
    int r = ((struct Process *)q)->arrival_time;
    return (l - r);
}

void FCFS(Process* process, int n)
{
    qsort((void*) process, n, sizeof(process[0]), comparator);
    printProcesses(process, n);
}

int main()
{
    // take input
    int n;
    scanf("%d", &n);

    // create an array of n processes
    Process* processes = (Process*)malloc(sizeof(Process) * n); // new
    int i;
    for (i = 0; i < n; i++)
    {
        int pid;
        scanf("%d", &pid);

        int arrival_time;
        scanf("%d", &arrival_time);

        int execution_time;
        scanf("%d", &execution_time);

        Process p;
        p.pid = pid;
        p.arrival_time = arrival_time;
        p.execution_time = execution_time;
        processes[i] = p;
    }


    FCFS(processes, n);

    //printf("hello");
    return 0;
}
