#include<stdio.h>
#include<conio.h>
#include<malloc.h>

struct node
{
	int data;
	struct node *link;
}*ptr, *header;

void insertion();
void display();


int main()
{
	int i,n;
	
	header=(struct node*)malloc(sizeof(struct node));
	
	header->data=NULL;
	header->link=NULL;
	
	printf("\nEnter the Number That, How many Nodes you want to Insert: ");
	scanf("%d",&n);
	for(i=0;i<n;i++)
	{
	 insertion();
	}
	
	 display();
	
getch();
}


void insertion()
{
	int data_value;
	
	struct node *temp=(struct node*) malloc (sizeof(struct node));
	
	printf("Enter the Data of Node: ");
	scanf("%d",&data_value);
	
	temp->data=data_value;
	temp->link=header->link;
	header->link=temp;
}


void display()
{
	printf("The Elements are: \n");
	ptr = header;
	while(ptr->link != NULL)
	{
		ptr=ptr->link;
		printf("%d\n", ptr->data);
		
	}
}
