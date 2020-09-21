#include<stdio.h>
#include<conio.h>
#include<malloc.h>

struct node
{
	int data;
	struct node *link;
	
}*header, *temp;        //Initialize 3 pointers as globals so that they do not need to be passed in functions.


//Prototypes for various user defined functions.
void insert_front();
void insert_end();
void insert_any();
void display();

int main()
{
	int choice,cont = 1;

	header = (struct node *) malloc(sizeof(struct node));

	header->data = NULL;
	header->link = NULL;

	while(cont == 1)
	{
		//Display menu to the user
		printf("\n1. Insert at front\n");
		printf("\n2. Insert at end\n");
		printf("\n3. Insert at any position\n");
		printf("\n4. Display linked list\n");
		printf("\nEnter your choice: ");
		scanf("%d", &choice);

		switch(choice)
		{
			case 1:
				insert_front();
				break;
			case 2:
				insert_end();
				break;
			case 3:
				insert_any();
				break;
			case 4:
				display();
				break;
		}

		printf("\n\nDo you want to continue? (1 / 0): ");
		scanf("%d", &cont);
	}

	getch();
}

void insert_front()
{
	int data_value;

	printf("\nEnter data of the node: ");
	scanf("%d", &data_value);

	temp = (struct node *) malloc(sizeof(struct node));

	temp->data = data_value;
	temp->link = header->link;  // Copying the NULL value from Header->link,    header->link is initilized as NULL,    we can write this as NULL(End of LL)
	header->link = temp;
}


void insert_end()
{
	int data_value;

	printf("\nEnter data of the node: ");
	scanf("%d", &data_value);

	temp = (struct node *) malloc(sizeof(struct node));

	//Traversing up to the end of the linked list.
//	ptr = header;
	while(header->link != NULL) 
	{
		header = header->link;
	}

	temp->data = data_value;
	temp->link = header->link;
	header->link = temp;
}

void insert_any()
{
	int data_value, key;

	printf("\nEnter data of the node: ");
	scanf("%d", &data_value);
	printf("\nEnter data of the node after which new node is to be inserted: ");
	scanf("%d", &key);

	temp = (struct node *) malloc(sizeof(struct node));

	//Traverse till key is found or end of the linked list is reached.
//	ptr = header;
	while(header->link != NULL && header->data != key)
	{
		header = header->link;
	}
	if(header->data == key)
	{
		temp->data = data_value;
		temp->link = header->link;
		header->link = temp;
	}
	else
	{
		printf("\nValue %d not found\n",key);
	}
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
