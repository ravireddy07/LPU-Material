#include<stdio.h>
#include<stdlib.h>



struct node
{
	int data;
	node* link;
}*ptr;

void insertion();
void display();

struct node *header=(struct node *)malloc(sizeof(struct node));

int main()
{
	header = (struct node *) malloc(sizeof(struct node));

	
	header->data = NULL;
	header->link = NULL;
	insertion();
	header->data = NULL;
	header->link = NULL;
	insertion();
	 
	header->data = NULL;
	header->link = NULL;
	insertion();
	 
	header->data = NULL;
	header->link = NULL;
	insertion();
	 
	header->data = NULL;
	header->link = NULL;
	display();
	 
}


void insertion()
{
	int data_value;

	
	struct node *temp=(struct node *)malloc(sizeof(struct node));
	
	
	printf("Enter the data into the node :");
	scanf("%d",&data_value);
				
	temp->data=data_value;
	temp->link=NULL;
	header->link=temp;
}
	
void display()
{
	printf("\nContents of the linked list are: \n");
	//Print the contents of the linked list starting from header
	
	while(header->link != NULL)
	{
		header = header->link;
		printf("%d ", header->data);
	}
}
