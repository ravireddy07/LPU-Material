#include <stdio.h>
int getOddOccurrence(int ar[], int ar_size)
{
     int i;
     int res = 0; 
     for (i=0; i < ar_size; i++)   
	 {
	 	res = res ^ ar[i];
        printf("%d\n",res);
	   }  
        
     return res;
}


int main()
{
     int ar[] = {2, 3, 5, 4, 5, 2, 4, 5, 3, 2, 4, 4, 2};
     
     //2-010
     //3-011
     //4-100
     //5-101
     //Neglict carry's
     
     int n = sizeof(ar)/sizeof(ar[0]);
     
     printf("size of Array is :%d\n\nsize of ar[0] is: %d\n\nthe Value of N is :%d\n",sizeof(ar),sizeof(ar[0]),n);
     
     printf("\n%d", getOddOccurrence(ar, n));
     return 0;
}
