import java.util.*;
import java.lang.*;

class Louter
{
	  Scanner s1 = new Scanner(System.in);
	   int a = s1.nextInt();
	   
	   Scanner s2 = new Scanner(System.in);
	   int b = s2.nextInt();
	
    void fun2()
   {
	   class Inner
	   {
		   void fun3()
		   {
			   System.out.print("My name is Ravi Reddy\n"+a+b);
			   public static void main(String args[])
          {
	         fun2();			 
          }
		   }			   
	   }
	   Inner obj1 = new Inner();
	   obj1.fun3();
   }
   
   
}