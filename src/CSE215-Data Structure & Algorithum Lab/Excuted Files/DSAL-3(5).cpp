#include<stdio.h>
#include<stdlib.h>

struct node{

    int data;
    struct node* prev;
    struct node* next;
};

void insert_beg(struct node** head, int new_data){
    struct node* temp = (struct node*)malloc(sizeof(struct node));
    temp->data = new_data;

    if(*head == NULL){

        temp->next = *head;
        temp->prev = NULL;          
        *head = temp;
    }
    else{
        temp->next = *head;     
        (*head)->prev = temp;
        *head = temp;
     }
}

void insert_before(struct node* next_node,int new_data){
    struct node* temp = (struct node*)malloc(sizeof(struct node));
    temp->data = new_data;

    if(next_node == NULL)
        printf("Invalid!!!!");


    temp->prev = next_node->prev;
    temp->next = next_node;
    next_node->prev = temp;

    if(temp->prev!=NULL)
        temp->prev->next = temp;
}

void printList(struct node* head){

    if(head == NULL)
        printf("The list is empty\n"); 
    else
        {
            while(head!=NULL){

                printf("%d\n",head->data);              
                head = head->next;              
              }
         }
}

int main(){

    struct node* head;   
    printList(head);    
    insert_beg(&head,10);
    insert_beg(&head,20);
    insert_before(head,70); 
    insert_beg(&head,30);

    printList(head);
}
