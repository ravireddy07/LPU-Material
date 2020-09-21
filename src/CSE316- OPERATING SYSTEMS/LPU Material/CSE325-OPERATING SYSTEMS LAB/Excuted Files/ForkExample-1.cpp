#include<stdio.h>
#include<sys/types.h>
#include<unistd.h>

int main()
{
  int i,j;
  pid_t p;
  p = fork();
  switch(p)
{
     case -1:
        printf("Error..\n");
        break;
     case 0:
        for(i=0;i<10;i++)
         {
            printf("%d \n",i);
            sleep(1);
          }
        break;
     default:
         wait();     
         for(j=20;j<30;j++)
          {
            printf("%d \n",j);
            //sleep(1);
          }
         break;
}
     printf("Commom \n");

}
