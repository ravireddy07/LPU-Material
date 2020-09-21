#include<stdio.h>
#include<conio.h>

int main()
{
    int o,run;
    
	void Linear_search();
	void Binary_search();
	void Bubble_sort();
	void Insertion_sort();
	void Selection_sort();
	
	printf("Do you want to Start The Operations, \n\n\t\t Press 1 to Continue\n");
	scanf("%s",&run);
	
	do
	{
		
	printf("\t\t\t\tSelect the Following Operation:-\n\n");
	printf("\t\t\t\t1.Search Using Linear Search\n");
	printf("\t\t\t\t2.Search Using Binary Search\n");
	printf("\t\t\t\t3.Sort Using Bubble sort\n");
	printf("\t\t\t\t4.Sort Using Insertion Sort\n");
	printf("\t\t\t\t5.Sort Using Selection Sort\n");
	
	scanf("%d",&o); 
	
	if(o==1)
	{
		Linear_search();
	}
	else if(o==2)
	{
		Binary_search();
	}
	else if(o==3)
	{
		Bubble_sort();
	}
	else if(o==4)
	{
		Insertion_sort();
	}
	else if(o==5)
	{
		Selection_sort();
	}
	else
	{
		printf("Something Went Wrong\n Please Try Again\n");
	}

}while(run==1);
	
getch();	
}

void Linear_search()
{
  printf("You are Doing Linear Search\n");
   int  a,ar1[5],k;
	printf("Enter the Array Elements\n");
	for(a=0;a<5;a++)
	{
		scanf("%d",&ar1[a]);
	}	
	printf("Enter the Element to be Find\n");
	scanf("%d",&k);
	
	for(a=0;a<5;a++)
	{
		if(ar1[a]==k)
	  {
		printf("%d Search Was Successfull Elements is found at %d\n",k,a+1);
	  } 

    }
    
}

void Binary_search()
{
	printf("You are Doing Binary Search\n");
	
  int i,f,e,m,o,j,n,s,ar2[100];
   printf("Enter the Size of Array\n");
   scanf("%d",&n);
 
   printf("Enter %d into th Array\n",n);
 
   for (i=0;i<n;i++)
   {
   	scanf("%d",&ar2[i]);
   }
      
 
   printf("Enter value to find\n");
   scanf("%d",&s);
 
   f=0;
   e=n-1;
   m=(f+e)/2;
 
   while(f<=e) {
      if(ar2[m]<s)
      {
      	f=m+1;  
	  }    
      else if (ar2[m]==s) 
	  {
         printf("%d found at location %d.\n",s,m+1);
         break;
      }
      else
      {
      	 e=m-1;
	  }
        
      m=(f+e)/2;
      
      }
      
      if(f>e)
      {
   	       printf("Not found! %d is not present in the list.\n", s);
      }
}


void Bubble_sort()
{
	printf("You are Doing Bubble Sort\n");
	int temp,v,u,h,ar3[100];
   printf("Enter number of elements\n");
   scanf("%d",&u);
 
   printf("Enter %d integers\n",u);
 
   
  for(h=1;h<=u-1;h++)
  {
    for(v=0;v<u-h;v++)
    {
      if(ar3[v]>ar3[v+1])
      {
        temp=ar3[v];
        ar3[v]=ar3[v+1];
        ar3[v+1]=temp;
      }
    }
  }
}


void Insertion_sort()
{
  int b,ar4[1000],c,d,t;
 printf("You are Doing Insertion Sort\n");
 
  printf("Enter number of elements\n");
  scanf("%d", &b);
 
  printf("Enter %d integers\n",b);
 
  for(c=0;c<b;c++)
  {
    scanf("%d",&ar4[c]);
  }
 
  for(c=1;c<=b-1;c++) 
  {
    d=c;
    while(d>0 && ar4[d]<ar4[d-1]) 
	{
      t=ar4[d];
      
      ar4[d]=ar4[d-1];
      
      ar4[d-1]=t;
 
      d--;
    }
  }
 
  printf("Sorted list in ascending order:\n");
 
  for (c=0;c<=b-1;c++) {
    printf("%d\n", ar4[c]);
  }
}


void Selection_sort()
{
	int ar5[100],f,g,p,position,swap;
   printf("You are Doing selection Sort\n");
 
   printf("Enter number of elements\n");
   scanf("%p", &f);
 
   printf("Enter %p integers\n",f);
 
   for(g=0;g<f;g++)
   {
   	scanf("%p",&ar5[g]);
   }
      
 
   for(g=0;g<(f-1);g++)
   {
      position=g;
 
      for(p=g+1;p<f;p++)
      {
         if(ar5[position]>ar5[p])
         {
         	 position=p;
		 }   
      }
      
      if(position!=g)
      {
         swap=ar5[g];
         ar5[g]=ar5[position];
         ar5[position]=swap;
      }
   }
 
   printf("Sorted list in ascending order:\n");
 
   for(g=0;g<f;g++)
   {
   	    printf("%d\n",ar5[g]);
   }
   
}
