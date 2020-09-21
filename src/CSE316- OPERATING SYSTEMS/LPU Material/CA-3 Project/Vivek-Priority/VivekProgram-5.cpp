#include<stdio.h>

void inputGift(char p[],int g[])
{
	for(int z=0;z<10;z++)
	{
		printf("Enter the Number of gifts having with person %c :  \n",p[z]);
		scanf("%d",&g[z]);
	}
}

void OutputStatus(char p1[],int g1[])
{
	for(int m=0;m<10;m++)
	{
		printf("The Person %c having the gifts %d have Processed/Payment has done...!!!\n",p1[m],g1[m]);
	}
}

void SortingQueue(int gifts1[],char person1[]);


int main()
{
	int gifts[10];
    char person[11]= {'a','b','c','d','e','f','g','h','i','j'};
    
    inputGift(person,gifts);
	
	SortingQueue(gifts,person);
	
	OutputStatus(person,gifts);
}

void SortingQueue(int gifts1[],char person1[])
{
	int temp=0,temp1=0;
	for(int x=0;x<10;x++)    
	{
		for (int y=x+1;y<10;y++)
		{
			if(gifts1[x]<gifts1[y])
			{
				temp = gifts1[x];
				gifts1[x]=gifts1[y];
				gifts1[y]=temp;
				
				temp1 = person1[x];
				person1[x]=person1[y];
				person1[y]=temp1;
			}
		}
	}
}
