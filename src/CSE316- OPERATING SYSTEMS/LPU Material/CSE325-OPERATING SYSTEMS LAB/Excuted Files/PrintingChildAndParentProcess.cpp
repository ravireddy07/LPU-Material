#include<sys/types.h>
#include<unistd.h>
#include<stdio.h>
int main()
{
                pid_t p;
                int i,j;
                p=fork();
                switch(p)
                {
                                case -1:
                                                printf("Error\n");
                                                break;
                                case 0:
                                               
                                                for(i=0;i<10;i++)
                                                {
                                                printf("%d\n",i);
                                                sleep(1);
                                                }
                                                break;
                                default:
                                                wait(); //makes the parent wait for the child to finish
                                                for(j=20;j<30;j++)
                                                {
                                                printf("%d\n",j);
                                                sleep(1);
                                                }
                                                break;
                }
printf("common\n"); // Any statement outside switch is executed by both parent and child
}
