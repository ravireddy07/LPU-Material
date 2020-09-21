#include <stdio.h>
#include <stdlib.h>
 
struct node {
  int data;
  struct node *left;
  struct node *right;
};
 
int search ( struct node *tree, int key )
{
  if ( tree == NULL ) {
    return 0;
  } else if ( key == tree->data ) {
    return 1;
  } else if ( key < tree->data ) {
    return search ( tree->left, key );
  } else {
    return search ( tree->right, key );
  }
}
 
struct node *insert ( struct node *tree, int key )
{
  if ( tree == NULL ) {
    tree = malloc ( sizeof *tree );
    if ( tree == NULL )
      return tree;
 
    tree->data = key;
    tree->left = tree->right = NULL;
  } else if ( key < tree->data ) {
    tree->left = insert ( tree->left, key );
  } else {
    tree->right = insert ( tree->right, key );
  }
 
  return tree;
}
 
void pretty_print ( struct node *tree, int level )
{
  if ( tree == NULL ) {
    printf ( "" );
  } else {
    pretty_print ( tree->right, level + 1 );
    printf ( "%d", tree->data );
    pretty_print ( tree->left, level + 1 );
  }
}
void inorder_print ( struct node *tree )
{
  if ( tree == NULL )
    return;
 
  inorder_print ( tree->left );
  printf ( "%-4d", tree->data );
  inorder_print ( tree->right );
}
 
int main ( void )
{
  struct node *tree = NULL;
  int i, n = 0;
 
  for ( i = 0; i < 10; i++ )
    tree = insert ( tree, rand() % 100 );
printf("the tree is");
  pretty_print ( tree, 0 );
  printf ( "\n the tree in inorder traversal is:\n");
  inorder_print ( tree );
  for ( i = 0; i < 100; i++ ) {
    if ( search ( tree, i ) != 0 ) {
      printf ( "%-4d", i );
        printf ( "\n%d numbers found", n );
      ++n;
    }
  }
 
   getchar();
 
  return 0;
}
