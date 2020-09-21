#include<stdio.h>
#include<conio.h>

int main()
{
   int ar[100],pos,c,n;
 
   printf("Enter number of elements in array\n");
   scanf("%d", &n);
 
   printf("Enter %d elements\n", n);
 
   for(c=0;c<n;c++)
   {
   	scanf("%d",&ar[c]);
   }
      
   printf("Enter the location where you wish to delete element\n");
   scanf("%d",&pos);
 
   if (pos >=n+1)
   {
   	printf("Deletion was not possible\n");
   }
   else
   {
      for ( c=pos-1;c<n-1;c++)
      {
      	ar[c] = ar[c+1];
	  }
	  
      printf("Modified array is\n");
 
      for(c=0;c<n-1;c++)
      {
      	 printf("%d\n", ar[c]);
	  }
        
   }
 
 getch();
}
