import java.util.Scanner;
import java.lang.*;


class AA
{
   void sum(int x, int y)
  {
    float z;
    z=x+y;
    System.out.print("Sum is: "+ z);
  }
}


class A
{
  static public void main(String args[])
{

  
 Scanner a1 = new Scanner(System.in);
 int a =a1.nextInt();

 Scanner b1 = new Scanner(System.in);
 int b =b1.nextInt();

 AA s1;
 s1 = new AA();  //AA s1 = new AA();
 s1.sum(a,b);
}
}