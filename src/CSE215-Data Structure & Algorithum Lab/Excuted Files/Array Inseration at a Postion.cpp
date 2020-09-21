#include<stdio.h>
#include<conio.h>

int main()
{
    int arr[100];
    int i,size,num,pos;

    printf("Enter size of the array : ");
    scanf("%d",&size);

    printf("Enter elements in array : ");
    for(i=0;i<size;i++)
    {
        scanf("%d",&arr[i]);
    }

    printf("Enter element to insert : ");
    scanf("%d",&num);
    
    printf("Enter the element position : ");
    scanf("%d",&pos);

    if(pos>size+1 || pos<=0)
    {
        printf("Invalid position! \t\n\t Please enter position between 1 to %d", size);
    }
    else
    {
        for(i=size;i>=pos;i--)
        {
            arr[i]=arr[i-1];
        }
        
        arr[pos-1] =num;
        size++; 

        printf("Array elements after insertion : ");
        for(i=0; i<size; i++)
        {
            printf("%d\t", arr[i]);
        }
    }
getch();
}
