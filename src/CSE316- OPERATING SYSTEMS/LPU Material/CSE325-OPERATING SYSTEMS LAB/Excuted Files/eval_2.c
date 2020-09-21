#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>
#include <pthread.h>
#include<semaphore.h>

int fd[2];

void *reader()
{
    while(1){
       char    ch;
       int     result;

       result = read (fd[0],&ch,1);
       if (result != 1) {
            perror("read");
            exit(3);
    }    printf ("Reader: %c\n", ch);  }
}

void *fun1()
{
     int     result;
     char    ch='A';

     while(1){
           result = write (fd[1], &ch,1);
           if (result != 1){
               perror ("write");
               exit (2);
           }

           printf ("fun1: %c\n", ch);
           if(ch == 'Z')
              ch = 'A'-1;

           ch++;
      }
}


void *fun2()
{
  int     result;  char    ch='a';

  while(1){
      result = write (fd[1], &ch,1);
      if (result != 1){
            perror ("write");
            exit (2);
      }

      printf ("fun2: %c\n", ch);
      if(ch == 'z')
            ch = 'a'-1;

     ch++;
  }
}

int main()
{
   pthread_t       tid1,tid2,tid3;
   int             result;

   result = pipe (fd);
   if (result < 0){
       perror("pipe ");
       exit(1);
   }

 pthread_create(&tid1,NULL,reader,NULL);
 pthread_create(&tid2,NULL,fun1,NULL);
 pthread_create(&tid3,NULL,fun2,NULL);

 pthread_join(tid1,NULL);
 pthread_join(tid2,NULL);
 pthread_join(tid3,NULL);
}
