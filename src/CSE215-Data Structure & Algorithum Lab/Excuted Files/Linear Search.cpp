#include<stdio.h>
#include<conio.h>

int main()
{
	int ar[5];
	int i,k=77,j;
	
	
	printf("Enter the Array Elements\n");
	for(i=0;i<5;i++)
	{
		scanf("%d",&ar[i]);
	}	
	
	for(i=0;i<5;i++)
	{
		if(ar[i]==k)
	  {
		printf("%d Search Was Successfull Elements is found at %d\n",k,i+1);
	  } 
    }
		
getch();
}
