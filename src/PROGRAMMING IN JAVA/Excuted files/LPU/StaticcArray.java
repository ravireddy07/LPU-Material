import java.lang.*;
import java.util.Scanner;

class Staticc
{
void Funct()
{

 int n=10,a[]={1,2,3,4,5,6,7,8,9,10};

System.out.println(a[0]);
System.out.println(a[1]);
System.out.println(a[2]);
System.out.println(a[3]);
System.out.println(a[4]);
System.out.println(a[5]);
System.out.println(a[6]);
System.out.println(a[7]);

System.out.print("\n Enter the Values of Array \n");
int aa[] = new int[n];

for(int i=0;i<=n;i++)
{
 Scanner sc= new Scanner(System.in);
  aa[i] = sc.nextInt();
}

}

}


class NewStaticc
{

public static void main(String args[])
{
Staticc s1= new Staticc();

s1.Funct();

}
}