#include<stdio.h>
#include<conio.h>

int main()
{
   int i,f,e,m,n,s,ar[100];
 
   printf("Enter the Size of Array\n");
  scanf("%d",&n);
 
   printf("Enter %d into th Array\n", n);
 
   for (i = 0; i < n; i++)
   {
   	scanf("%d",&ar[i]);
   }
      
 
   printf("Enter value to find\n");
   scanf("%d", &s);
 
   f = 0;
   e = n - 1;
   m = (f+e)/2;
 
   while (f <= e) {
      if (ar[m] < s)
      {
      	f = m + 1;  
	  }    
      else if (ar[m] == s) 
	  {
         printf("%d found at location %d.\n", s, m+1);
         break;
      }
      else
      {
      	 e = m - 1;
	  }
        
 
      m = (f + e)/2;
      }
   if (f > e)
   {
   	    printf("Not found! %d is not present in the list.\n", s);
    }
   getch();
}
