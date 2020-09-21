#include<stdio.h>
#include<stdlib.h>
 
typedef struct BST
{
    int data;
    struct BST *left;
    struct BST *right;
}node;
 
node *create();
void insertion(node *,node *);
void preorder(node *);
 
int main()
{
    char ch;
    node *root=NULL,*temp;
    
    do
    {
        temp=create();
        if(root==NULL)
            root=temp;
        else    
            insertion(root,temp);
            
        printf("Wnat to Insert more Values (y/n)?\n");
        getchar();
        scanf("%c",&ch);
    }while(ch=='y'|ch=='Y');
    
    printf("nPreorder Traversal: ");
    preorder(root);
    return 0;
}
 
node *create()
{
    node *temp;
    printf("nEnter data:");
    temp=(node*)malloc(sizeof(node));
    scanf("%d",&temp->data);
    temp->left=temp->right=NULL;
    return temp;
}
 
void insertion(node *root,node *temp)
{
    if(temp->data<root->data)
    {
        if(root->left!=NULL)
            insertion(root->left,temp);
        else
            root->left=temp;
    }
    
    if(temp->data>root->data)
    {
        if(root->right!=NULL)
            insertion(root->right,temp);
        else
            root->right=temp;
    }
}
 
void preorder(node *root)
{
    if(root!=NULL)
    {
        printf("%d ",root->data);
        preorder(root->left);
        preorder(root->right);
    }
}
