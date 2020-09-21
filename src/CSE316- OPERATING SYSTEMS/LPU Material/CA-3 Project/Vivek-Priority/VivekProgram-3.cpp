#include<stdio.h>
#include<conio.h>

void inputGift(char p[],int g[])
{
	for(int z=0;z<10;z++)
	{
		printf("Enter the Number of gifts having with person %c :  \n",p[z]);
		scanf("%d",&g[z]);
	}
}


int main()
{
	int gifts[10],temp=0,temp1=0;
    char person[11]= {'a','b','c','d','e','f','g','h','i','j'};
    
    inputGift(person,gifts);
	
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
