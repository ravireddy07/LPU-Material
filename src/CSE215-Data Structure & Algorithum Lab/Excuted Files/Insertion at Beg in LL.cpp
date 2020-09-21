# include <stdio.h>
# include <malloc.h>
# include <conio.h>
 
struct link
{
	int data;
	struct link *node_ptr;
}start, *previous, *new1;
 

int i,number;
 
void insertion(struct link *);
void create_list(struct link *);
void display(struct link *);

void create_list(struct link *node)
{
 
	char ch;
	start.node_ptr= NULL;  
	node = &start;
//	start.node_ptr = node;
	i = 0;
	
	fflush(stdin);
	
	printf("\nInput choice n for break: ");
	ch = getchar();
	while(ch != 'n')
	{
		node->node_ptr = (struct link* ) malloc(sizeof(struct link));
		
		node = node->node_ptr;    //Saying that, Go to the pointer place to Point next Node.    //incrementing the Current status pointer of LL
		//Here, creating the new_node....
		
		
		printf("\nInput the node: %d: ", (i+1));
		scanf("%d", &node->data);
		node->node_ptr = NULL;
		fflush(stdin);
		printf("\nInput choice n for break: ");
		ch = getchar();
		i++;
	}
}

void insertion(struct link *node)
{
	node = start.node_ptr;
 
	previous = &start;
 
	new1 = (struct link* ) malloc(sizeof(struct link));
	
	new1->node_ptr = node ;
	previous->node_ptr = new1;
	
	printf("\nInput the fisrt node value: ");
	scanf("%d", &new1->data);
}
 
 
void display(struct link *node)
{
	node = start.node_ptr;
	printf("\nAfter Inserting a node's list is as follows: \n");
	
	while (node)
	{
		printf(" %d ", node->data);
		node = node->node_ptr;
	}
}

int main()
{
	struct link *node = (struct link *) malloc(sizeof(struct link));    // an empty node is created(data,ptr_var)
	 
	create_list(node);
	//insertion(node);
	display(node);
	
    getch();
}
