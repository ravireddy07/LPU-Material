#include<stdio.h>
#include<stdlib.h>

main()
{
int file[50],p,i,j,a,st,len;
for(i=0;i<50;i++)
{
	file[i]=0;
}

printf("Enter how many blocks that are already allocated: \n");
scanf("%d",&p);

printf("\nEnter the blocks no.s that are already allocated: \n");

for(i=0;i<p;i++)
{
	scanf("%d",&a);
	file[a]=1;
}

	
printf("Enter the starting index block & length: \n");
scanf("%d%d",&st,&len);

for(j=st;j<(len+st);j++)
{
    if(file[j]==0)
    {
        file[j]=1;
        printf("\n%d->%d",j,file[j]);
    }
    else
    {
        printf("\n %d->file is already allocated: \n",j);
        len++;
    }
}

}
