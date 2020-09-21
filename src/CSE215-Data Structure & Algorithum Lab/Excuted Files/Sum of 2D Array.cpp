#include<stdio.h>
#include<conio.h>
main()
{
	int a[10][10],i,j,m,n,r,sum=0;
	printf("enter no of rows and colouns in array");
	scanf("%d%d",&m,&n);
	for(i=0;i<m;i++)
	{
		for(j=0;j<n;j++)
		{
			scanf("%d",&a[i][j]);
		}
	}
	printf("enter the row to be summed");
	scanf("%d",&r);
	for(i=r,j=0;j<n;j++)
	{
		sum=sum+a[i][j];
	}
	printf("sum of the elements in row=%d",sum);
	getch();
}
