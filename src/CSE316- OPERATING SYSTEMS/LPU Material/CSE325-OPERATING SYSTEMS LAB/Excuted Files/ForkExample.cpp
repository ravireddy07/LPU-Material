#include<sys/types.h>
#include<stdio.h>
#include<unistd.h>

int main()
{
  pid_t p;
  p = fork();
  switch(p)
{
    case -1:
       printf("Error..\n");
       break;
    case 0:
       printf("Case-0: I'm child Having ID %d \n",getpid());
       printf("Case-0: I'm a Parent Process having ID %d \n",getppid());
       break;
    default:
       printf("Default: I'm parent Having ID %d \n",getppid());
       printf("Default: My child Having ID %d \n",p);
       break;
}

}
