#include <stdio.h>
#include<conio.h>
#include <string.h>
struct cricket
{
     char name[15];
     char teamname[10];
     float btavg;
};
 
int main()
{
struct cricket player[100];
int i,n;

char ch,team[100];

printf("How many player's Playing in a Match'\n");
scanf("%d",&n);

for (i=0;i<n;i++)
{
   printf("\nEnter Player Name %d : ",i+1);
   scanf("%s",player[i].name);
   
   printf("\nEnter the team name of the Above Player %d : ",i+1);
   scanf("%s",player[i].teamname);
   
   printf("\nINPUT THE BATTING AVERAGE OF PLAYER %d : ",i+1);
   scanf("%f",&player[i].btavg);
}
}
