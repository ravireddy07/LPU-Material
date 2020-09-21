#include <stdio.h>
#include<conio.h>
#include <string.h>
struct cricket
{
     char name[50];
     char teamname[50];
     float btavg;
};
 
int main()
{
struct cricket player[100];
int i,n;

char ch,team[100];

printf("How many player's Playing in a Match in both the Team's: \n");
scanf("%d",&n);

for (i=0;i<n;i++)
{
   printf("\nEnter Player Name %d : ",i+1);
   scanf("%s",player[i].name);
   
   printf("\nEnter the team name of the Above Player %d : ",i+1);
   scanf("%s",player[i].teamname);
   
   printf("\nINPUT THE BATTING AVERAGE OF PLAYER %d : ",i+1);
   scanf("%f",&player[i].btavg);
   printf("\n\n");
}
 
 
      printf("==========================================================\n");
      printf("  PLAYER'S NAME            country            BATTING AVERAGE\n");
      printf("==========================================================\n");
      for (i=0; i<n; i++)
      {
	        printf("%-20s %-20s%f\n",player[i].name,player[i].teamname,player[i].btavg);
	  }
         
 
      read:
       printf("\n\nEnter the Team Name to see the List  : ");
       scanf("%s",team);
 
      printf("\n               %s                 \n",team);
      printf("=========================================\n");
      printf("  PLAYER'S NAME        BATTING AVERAGE\n");
      printf("=========================================\n");
      
      
      for (i=0; i<n; i++)
      {
      	if (strcmp(team,player[i].teamname)==0)
           printf("  %-20s %f\n",player[i].name,player[i].btavg);
	  }
          
 
      printf("\n\nDO YOU WANT TO LIST ANY OTHER TEAM ? (Y/N):\t ");
      ch = getche();
      if (ch == 'Y' || ch == 'y')
      goto read;
 
  getch();
}
