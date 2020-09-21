#include<stdio.h>
#include<stdlib.h>
#include<conio.h>
#include<string.h>

int input1()
{
	int a1;
	printf("\nEnter the Number of Process :");
    scanf("%d",&a1);
    return a1;
}

int input2()
{
	int a2;
	printf("\nEnter the Resources Available : ");
    scanf("%d",&a2);
    return a2;
}

void totalinput(int a,int h,int avail_array[],int p_array[],int alloc_array[10][10],int max_array[10][10])
{
	printf("\nEnter Instances/Available for Resources/Matrix :");
	for(int i=0;i<h;i++)
	{
		printf("R%d ",i+1);
		scanf("%d",&avail_array[i]);
	}
	
	printf("\n Enter the Allocation matrix  \n");
	for(int j=0;j<a;j++)
	{
		printf("p%d",j+1);
		p_array[j]=0;
		for(int k=0;k<h;k++)
		{
			scanf("%d",&alloc_array[j][k]);
		}
	}
	
	printf("\n Enter the MAX matrix  \n");
	
	for(int q=0;q<a;q++)
	{
		printf("p%d",q+1);
		{
			for(int w=0;w<h;w++)
			{
				scanf("%d",&max_array[q][w]);
			}
		}
	}
}


int main()
{
 int n = input1();      // number of process
 int r = input2();      // number of resources
 int i,j,k,cnt,cntt;
 int avail[10],p[10];
 int need[10][10],alloc[10][10],max[10][10];
 

 totalinput(n,r,avail,p,alloc,max);
 
 
  for(i=0;i<n;i++)
  {
    printf("\np%d\t",i+1) ;
    for(j=0;j<r;j++)
    {
        need[i][j]=max[i][j]-alloc[i][j];
        printf("\t%d",need[i][j]);
    }
  }
   
   k=0;
   cntt=0;
   printf("\n\n");
 
while(k<15)
{
	for(i=0;i<n;i++)
	{
	    cnt=0;
	    for(j=0;j<r;j++)
	    {
	    	if(p[i]==1)
			{
			    break;	
			}
			if(need[i][j]<=avail[j])
			{
				cnt++;
			}
			if(cnt==r)
			{
				for(j=0;j<r;j++)
				{
					avail[j]+=alloc[i][j];
				}
				printf("p%d\t",i+1);
				p[i]=1;
				cntt++;
			}
		}
    }
}k++;
 
 if(cntt<n-1)
 {
 	printf("\n Deadlock is Occured");
 }
   getch();
}
