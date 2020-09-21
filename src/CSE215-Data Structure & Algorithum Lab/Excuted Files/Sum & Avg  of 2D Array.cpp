#include<stdio.h>


int main()
{
   /* 2D array declaration*/
   int sum=0,count=0,i,j,n,m;
   float avg=0;
   int disp[100][100];
   /*Counter variables for the loop*/
   
   
   
   printf("\nEnter the size in NxM of the 2D Array\n");
   scanf("%d%d",&n,&m);
   
   for(i=0; i<n; i++)
    {
      for(j=0;j<m;j++) 
	  {
         printf("Enter value for disp[%d][%d]:", i, j);
         scanf("%d", &disp[i][j]);
      }
   }
   //Displaying array elements
   printf("Two Dimensional array elements:\n");
   for(i=0; i<n; i++) 
   {
      for(j=0;j<m;j++)
	   {
         printf("%d ", disp[i][j]);
         
         if(j == m)
		 {
            printf("\n");
         }
      }
   }

    for(i=0; i<n; i++) 
   {
      for(j=0;j<m;j++)
	   {
	   	 sum+=disp[i][j];
	   	 count++;
	   }
   }

avg=sum/count;
printf("\nSum = %d\n",sum);
printf("avg = %f",avg);
	
   return 0;
}
