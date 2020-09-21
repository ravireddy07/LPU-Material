#include<stdio.h>
#include<pthread.h>
#include<semaphore.h>

pthread_t obj[10],obj1[10]; pthread_mutex_t lock; int readcount=0; int writecount=0; sem_t write; sem_t read;

void *writer(void *arg)
{
 sem_wait(&write);
 writecount++;
    
 int a=(int *)arg;
 printf("I am writer no %d\n",writecount);
 
 printf("I am writer and i am leaving%d\n",writecount);  writecount--;
 
 sem_post(&write);
 
}
void *reader(void *arg)
{
 sem_wait(&read);  readcount++;  if(readcount==1)      sem_wait(&write);
 sem_post(&read);
 
 
 
 printf("I am reading and no of readers are %d\n",readcount);
 
 
 
 
 sem_wait(&read);
 printf("I am reader and i am leaving%d\n",readcount--);
 
 if(readcount==0)      sem_post(&write);
 sem_post(&read);
 
}
 

main()
{int i;
     sem_init(&read,0,1);    sem_init(&write,0,1);     for(i=0;i<10;i++){
        pthread_create(&obj[i],NULL,writer,NULL);
          pthread_create(&obj1[i],NULL,reader,NULL);  
   
} for(i=0;i<10;i++)
{
 
}
for(i=0;i<10;i++)
{  pthread_join(obj[i],NULL);
  
} for(i=0;i<10;i++)
{  pthread_join(obj1[i],NULL);
  
}
}

