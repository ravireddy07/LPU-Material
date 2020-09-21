#include<stdio.h>
#include<conio.h>
main()
{
	int a[10],i;
	printf("enter any numbers");
	
	for(i=0;i<10;i++)
	scanf("%d", &a[i]);
	
	for(i=0;i<10;i++)
	{
		if(a[i]%2==0)
		printf("%d \n",a[i]);
	}
	
	getch();
}
