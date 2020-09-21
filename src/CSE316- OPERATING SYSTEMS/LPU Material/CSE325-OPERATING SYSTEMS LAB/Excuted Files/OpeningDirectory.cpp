#include<stdio.h>
#include<dirent.h>

int main()
{
  DIR *dp;
struct dirent *dptr;
//mkdir("RaviReddy",0777);

dp = opendir("RaviReddy");

while((dptr = readdir(dp))!=NULL)
{
  printf("%s \n",dptr->d_name);
  printf("%d \n",dptr->d_type);
}
closedir(dp);
}
