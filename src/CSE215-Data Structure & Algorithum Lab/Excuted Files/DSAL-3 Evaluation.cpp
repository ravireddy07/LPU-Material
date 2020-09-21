#include<stdio.h>
#include<conio.h>
#include<malloc.h>

struct node
{
      int info;
      struct node *link;
};

struct node *first;

void createlist()
{
      char ch;
      printf("Enter n for Exit thee Linked List\n");
      ch=getchar();
      
      while(ch!='n')
      {
      struct node *NEW_NODE,*SAVE;int x;
      
      NEW_NODE=(struct node *)malloc(sizeof(struct node));
      
      printf("\nEnter Data/Value to Insert into LL : ");
      scanf("%d",&x); 
      NEW_NODE->info=x;
      
      if(first==NULL)
      {
         NEW_NODE->link=NULL;
         first=NEW_NODE;
      }
      else
      {
         SAVE=first;
         while(SAVE->link!=NULL)
         {
            SAVE=SAVE->link;
         }
         SAVE->link=NEW_NODE;
         NEW_NODE->link=NULL;
      }
      
      fflush(stdin);
      printf("\n Enter n for Exit the Insertion Process \n");
      ch=getchar();
   }
}


void insertbefore(int x)
{
      struct node *NEW_NODE,*SAVE,*PRED;
      int value;
      
      NEW_NODE=(struct node *)malloc(sizeof(struct node));
      
      printf("\n Enter value of node: ");
      scanf("%d",&value);
      NEW_NODE->info=value;
      
      if(first==NULL)
      {
         printf("\n The Specified Node was Not Found in The List \n");
      }
      else
      {
          SAVE=first;
          while(x!=SAVE->info && SAVE->link!=NULL)
          {
          PRED=SAVE;
          SAVE=SAVE->link;
          }
          
              if(SAVE->info==x)
            {
                 if(first==SAVE)
                {
                   NEW_NODE->link=SAVE;
                   first=NEW_NODE;
                }
                 else
                {
                   NEW_NODE->link=SAVE;
                   PRED->link=NEW_NODE;
                }
            }
          
             else
            {
               printf("\n Specified Node was Not Found in the List\n");
            }
      }
}

void display()
{
      struct node *SAVE;
      if(first==NULL)
      {
         printf("Your Linked List is empty\n");
         return;
      }
      
      printf("The Entire Elements are:\n");
      
      SAVE=first;
      while(SAVE!=NULL)
      {
         if(SAVE->link==NULL)
         printf(" %d \t",SAVE->info);
         else
         printf(" %d \t ",SAVE->info);
         SAVE=SAVE->link;
      }
      
      printf("\n");
      return;
}

int main()
{
      int x;
      
      first=NULL;
      
      createlist();
      
      display();
      
      printf("\n\n Enter value of Node before which you want to enter new node:");
      scanf("%d",&x);
      
      insertbefore(x);
      
      display();
      
      
      
      
      getch();
}
