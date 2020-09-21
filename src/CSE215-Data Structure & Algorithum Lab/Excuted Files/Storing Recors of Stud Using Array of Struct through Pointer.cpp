#include<stdio.h>
#include<conio.h>
#include<stdlib.h>

struct stud
    {
    int roll,marks;
    char name[10];
    char sub_name[10];
    }*ptr[10];

int main()
{
int i,n;

	printf("Enter the Number of Students Record's you want to Save:\n");
	scanf("%d",&n);
	
printf("Enter the Student Details : ");

for(i=0;i<n;i++)
    {
    ptr[i] = (struct stud *) malloc(sizeof(struct stud));
    printf("\nEnter the Name : ");
    scanf("%s",ptr[i]->name);
    printf("\nEnter the Roll Number : ");
    scanf("%d",&ptr[i]->roll);
    printf("\nEnter the Subject Name:");
    scanf("%s",ptr[i]->sub_name);
    printf("\nEnter the Marks : ");
    scanf("%d",&ptr[i]->marks);
    		
    }

    printf("\nStudent Details are : ");

    for(i=0;i<n;i++)
    {
    	
    printf("\nName : %s",ptr[i]->name);
    printf("\nRoll Number : %d",ptr[i]->roll);
    printf("\nSubject :",ptr[i]->sub_name);
    printf("\nMarks is : ",ptr[i]->marks);
    
     if(ptr[i]->marks>=85)
    {
    	printf("Grade A");
	}
	else if(ptr[i]->marks>=75 && ptr[i]->marks<85)
	{
    	printf("Grade B");
	}
	else if(ptr[i]->marks>=55 && ptr[i]->marks<75)
	{
    	printf("Grade C");
	}
	else if(ptr[i]->marks>=40 && ptr[i]->marks<55)
	{
    	printf("Grade D");
	}
	else if(ptr[i]->marks<40)
	{
    	printf("You're Failed\n'");
	}
	
    }
    
getch();
}
