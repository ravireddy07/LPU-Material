#include<stdio.h>
#include<conio.h>
void swap(int *a,int *b)
{
	
	*a=*a+*b;
	*b=*a-*b;
	*a=*a-*b;
	printf("%d\t%d",*a,*b);
}
main()
{
	int a=10,b=20;
	swap(&a,&b);
	getch();
}
