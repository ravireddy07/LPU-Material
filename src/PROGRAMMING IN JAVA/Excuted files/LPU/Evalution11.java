import java.util.*;6
import java.lang.*;
import java.util.Scanner;
import java.util.ArrayList;

class Second
{
/*
String name;
int number;
static String Array[] f=new Array(n);
static String Array[] mobile=new Array(n);
*/

Second(int n)
{
System.out.print("\n Enter name of the Student and Phone number:\n ");

String[] Ar = new String[n];
String[] Ar1 = new String[n];

for(int p=0;p<n;p++)
{
  Scanner scan=new Scanner(System.in);
  Ar[p]=scan.nextLine();
  Scanner scan1=new Scanner(System.in);
  Ar1[p]=scan1.nextLine(); 
}      
}


}


class First
{
public static void main(String[] args)
{
Scanner scan=new Scanner(System.in);
System.out.print("Enter number of Size of Students:\n ");
int n=scan.nextInt();
Second[] a=new Second[n];

for(int i=0;i<n;i++)
{
a[i]=new Second(n);
} 
       
System.out.print("\nEnter the name to search:");
scan.nextLine();

String st=scan.nextLine();
if(Second.f.contains(st))
{
System.out.print("\nphone number of the Second is : \n"+Second.mobile.get(Second.f.indexOf(st)));
}
else
{
System.out.print("\n not found \n");
}

}
}
