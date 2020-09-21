#include<stdio.h>
#include<conio.h>
#include<malloc.h>

struct node
{
	int data;
	struct node *link;
	
}*header,*temp,*ptr;

int i,n;
void insert_front();
void insert_end();
void display();

int main()
{
	printf("How many Nodes you want to Insert : ");
	scanf("%d",&n);
	
	header = (struct node *) malloc(sizeof(struct node));

	header->data = NULL;
	header->link = NULL;
	
	for(i=0;i<n;i++)
	{
		insert_front();
	}
	insert_end();
	display();
}

void insert_front()
{
	int data_value;

	printf("\nEnter data of the node: ");
	scanf("%d", &data_value);

	temp = (struct node *) malloc (sizeof(struct node));

	temp->data = data_value;
	temp->link = header->link;  // Copying the NULL value from Header->link,    header->link is initilized as NULL,    we can write this as NULL(End of LL)
	header->link = temp;
}

void insert_end()
{
	int data_value;

	printf("\nEnter data To insert as Last node: ");
	scanf("%d", &data_value);
	
	temp = (struct node *) malloc (sizeof(struct node));
	
	while(header->link != NULL)
	{
		header=header->link;
	}
	
	temp->data = data_value;
	temp->link = header->link;  // Copying the NULL value from Header->link,    header->link is initilized as NULL,    we can write this as NULL(End of LL)
	header->link = temp;
}

void display()
{
	printf("\nContents of the linked list are: \n");
	
	//Print the contents of the linked list starting from header
	//ptr = header;
	while(header->link != NULL)
	{
		header = header->link;
		printf("%d ", header->data);
	}
}
