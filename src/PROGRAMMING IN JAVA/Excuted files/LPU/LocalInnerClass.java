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
		   float sum,avg;
		   void fun3()
		   {
			   sum = a+b;
	           avg = (a+b)/2;
			   System.out.print("Sum: "+sum);
			   System.out.print("Avg: "+avg);
		   }
		   
	   }
	   Inner obj1 = new Inner();
	   obj1.fun3();
   }
}

class mainner
{
	public static void main(String args[])
   {
	  Louter ob1 = new Louter();
      ob1.fun2();	  
   }
}
