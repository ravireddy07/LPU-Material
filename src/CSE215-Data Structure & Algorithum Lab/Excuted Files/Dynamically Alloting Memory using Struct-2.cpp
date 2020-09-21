#include<stdio.h>
#include<conio.h>
#include<stdlib.h>
#include<string.h>
struct employee
{
	int salary;
	int id;
	char name[15];
};
main()
{
	int n,i;
	employee *e;
	printf("enter no of employees");
	scanf("%d",&n);
	
	e=(employee*)malloc(n*sizeof(employee));
	printf("enter salary id and name of employee");
	
	for(i=0;i<n;i++)
	scanf("%d%d%s",&(e+i)->salary,&(e+i)->id,&(e+i)->name);
	
	for(i=0;i<n;i++)
	printf("salary=%d\tid=%d\tname=%s",(e+i)->salary,(e+i)->id,(e+i)->name);
	getch();
}
