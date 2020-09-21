#include<stdio.h>
#include<conio.h>

int main()
{
	int gifts[10],count=1,temp=0,temp1=0;
    char person[11];
	//  {'a','b','c','d','e','f','g','h','i','j'}
	
	printf("Enter the Person's name: \n");
	for(int n=0;n<10;n++)
	{
		scanf("%s",&person[n]);
	}
	
	for(int z=0;z<10;z++)
	{
    	printf("Enter the Number of gifts having with person %d :  \n",count++);
		scanf("%d",&gifts[z]);
	}
	
	for(int x=0;x<10;x++)    
	{
		for (int y=x+1;y<10;y++)
		{
			if(gifts[x]<gifts[y])
			{
				temp = gifts[x];
				gifts[x]=gifts[y];
				gifts[y]=temp;
				
				temp1 = person[x];
				person[x]=person[y];
				person[y]=temp1;
			}
		}
	}
	
	for(int m=0;m<10;m++)
	{
		printf("The Person %c having the gifts %d have Processed/Payment has done...!!!\n",person[m],gifts[m]);
	}
}
