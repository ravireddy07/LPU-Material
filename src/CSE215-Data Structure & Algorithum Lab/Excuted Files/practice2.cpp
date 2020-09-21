#include<stdio.h>
#include<malloc.h>
#include<conio.h>

struct node
{
	int data;
	struct node *link;
}*ptr,*header,*temp;

int i,n;

int main()
{
	
	void insertion();
	void dis();
	header=(struct node *) malloc (sizeof(struct node));
	
	header->data=NULL;
	header->link=NULL;
	
	printf("How many Nodes you want to Insert : ");
	scanf("%d",&n);
	
	for(i=0;i<n;i++)
	{
		insertion();
	}
	
	dis();
	
	getch();
}


void insertion()
{
	int data_value;
	temp=(struct node *) malloc (sizeof(struct node));
	
	printf("\nEnter the  Node :");
	scanf("%d",&data_value);
	
	temp->data=data_value;
	temp->link=header->link;
	header->link=temp;
}

void dis()
{
	printf("\nDisplaying nodes are:\n");
	ptr=header;
	
	while(ptr->link !=NULL)
	{
		 ptr=ptr->link;
		 printf("%d\n",ptr->data);
	}
}
