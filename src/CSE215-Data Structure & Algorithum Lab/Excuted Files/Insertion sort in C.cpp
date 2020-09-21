#include <stdio.h>
 
int main()
{
  int n,k, array[1000], c, d, t;
 
  printf("Enter number of elements\n");
  scanf("%d", &n);
 
  printf("Enter %d integers\n", n);
 
  for (c = 0; c < n; c++) 
  {
    scanf("%d", &array[c]);
  }
 
  for (c = 1 ; c <= n - 1; c++) 
  {
    d = c;
 
    while ( d > 0 && array[d] < array[d-1])
	 {
               t = array[d];
        array[d] = array[d-1];
      array[d-1] = t;
 
      d--;  //inside Dcrimenter
    }
  }
 
  printf("Sorted list in ascending order:\n");
  
  
  for (c = 0; c < n ; c++) 
  {
    printf("%d\n", array[c]);
  }
  
  printf("printing the Sorted list in Decending order:\n");
  for (c = n-1; c >= 0; c--) 
  {
    printf("%d\n", array[c]);
  }
  
  return 0;
}
