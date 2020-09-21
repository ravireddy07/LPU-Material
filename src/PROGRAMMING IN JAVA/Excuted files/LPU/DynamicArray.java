import java.lang.*;
import java.util.Scanner;

class First
{
   void function(int br[],int n)
{
  System.out.print("\n Enter the Values of Array \n");

  for(int i=0;i<n;i++)
  {
    Scanner sc = new Scanner(System.in);
    br[i] = sc.nextInt();
  }
  
   System.out.print("\n\n The Array Elements are: \n");
   for(int i=0;i<n;i++)
  {
    System.out.println(br[i]);
  }

}

}

class Second
{
   static public void main(String args[])
{ 
System.out.print("\n Enter the Value of n: \n");
  
Scanner sc1 = new Scanner(System.in);
  int n = sc1.nextInt();
  int ar[]=new int[n];
  
  First s1 = new First();
  s1.function(ar,n);
}
}