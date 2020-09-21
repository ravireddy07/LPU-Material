import java.util.*;6
import java.lang.*;
import java.util.Scanner;
import java.util.ArrayList;

class Second
{
String name;
int number;
static ArrayList f=new ArrayList();
static ArrayList mobile=new ArrayList();

//ArrayList<String>name=new ArrayList<String>();
//ArrayList<String>phone=new ArrayList<String>();

Second()
{
System.out.print("\n Enter name of the Student and Phone number:\n ");
Scanner scan=new Scanner(System.in);
name=scan.nextLine();
f.add(name);
number=scan.nextInt();
mobile.add(number);        
}


}


class First
{
public static void main(String[] args)
{
Scanner scan=new Scanner(System.in);
System.out.print("enter number of Size of Students:\n ");
int n=scan.nextInt();
Second[] a=new Second[n];

for(int i=0;i<n;i++)
{
a[i]=new Second();
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
