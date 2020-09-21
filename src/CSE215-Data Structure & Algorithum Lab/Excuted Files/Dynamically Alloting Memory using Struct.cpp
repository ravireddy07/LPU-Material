#include<stdio.h>
#include<conio.h>
#include<stdlib.h>
#include<string.h>
struct employee
{
	char name[15];
	int salary;
	int exp;
};
main()
{
	employee *e;
	int i,n;
	printf("enter no of employees");
	scanf("%d",&n);
	e=(employee*)malloc(n*sizeof(employee));
	printf("enter name salary and experience of employee");
	for(i=0;i<n;i++)
	scanf("%s%d%d",&(e+i)->name,&e[i].salary,&(e+i)->exp);
	for(i=0;i<n;i++)
	{
		if(e[i].salary<10000&&e[i].exp>=5)
		printf("Name=%s\tsalary=%d\texperience=%d",(e+i)->name,(e+i)->salary,(e+i)->exp);
	}
	getch();
}
