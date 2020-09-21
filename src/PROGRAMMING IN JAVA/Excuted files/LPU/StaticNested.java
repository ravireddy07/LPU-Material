import java.util.*;
import java.util.Scanner;

class Outer
{
	  Scanner s1 = new Scanner(System.in);
	  long reg=s1.nextLong();
	  
	  Scanner s = new Scanner(System.in);
	  String name = s.nextLine();
	  
	  Scanner s2 = new Scanner(System.in);
	  int sec = s2.nextInt();
  
   class Inner
  {
	  static void function()
	  {
		  Outer x1 = new Outer();
		  
		  System.out.println("Your Name is: "+x1.name);
		  System.out.println("Your Reg.No is: "+x1.reg);
		  System.out.println("Your Section is: "+x1.sec);
	  }
  }
}

 class Bottom
{
  public static void main(String args[])
  {
	 // for non-static member function
    Outer.Inner a1 = new Outer.Inner(); 
	a1.function();
  }
}
/*   for non-static member function	
	outer obj = new outer();
	outer.inner obj1 = obj.new inner();
	obj1.function();