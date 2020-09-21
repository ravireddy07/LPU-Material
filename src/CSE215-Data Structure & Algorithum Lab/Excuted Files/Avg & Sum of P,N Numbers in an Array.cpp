#include<stdio.h>
#include<conio.h>
main()
{
	int a[5][5],i,j,sum=0,m,n;
	float avg;
	printf("set the limit of dimensions of m and n");
	scanf("\n %d%d \n",&m,&n);
	for(i=0;i<m;i++)
	{
		for(j=0;j<n;j++)
		{
			scanf("%d \n",&a[i][j]);
			sum=sum+a[i][j];
		}
	}
	avg=sum/(m*n);
	printf("sum=%d",sum);
	printf("avg=%f",avg);
	getch();
}
