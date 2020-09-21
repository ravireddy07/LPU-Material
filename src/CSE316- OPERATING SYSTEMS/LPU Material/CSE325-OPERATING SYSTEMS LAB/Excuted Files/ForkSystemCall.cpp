#include<stdio.h>
#include<sys/types.h>
#include<unistd.h>

int main()
{
                pid_t  p;
                p=fork(); // creates duplicate process P1
                switch(p)
                {
                    case -1:
                        printf("Error\n");
                        break;
                        
                    case 0:  // executed by child
                        printf("I am child having id:%d\n",getpid()); // prints pid of process
                        pintf("My parent's id is:%d\n",getppid());  // prints pid of parent process
                        break;
                        
                    default:  // executed by parent
                        printf("I am parent having id:%d\n",getpid());
                        printf("My child's id is: %d\n",p);                                             
                        break;
                }
}
