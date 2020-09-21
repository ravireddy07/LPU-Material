import java.util.*;
import java.util.Scanner;



class Other
{
	//System.out.println("Enter Your Marks Out of 600: ");
	  Scanner s4 = new Scanner(System.in);
	  float marks1 =s4.nextFloat();
}


class OuterBase
{
    void done()
	{
	  System.out.println("You Can Improve Marks Even Better......Good Luck..!!!");
	}
	  
class base extends Other
{	
    void grade()
	{
		Other i1 = new Other();
	if (i1.marks1 >=470)
	{
		System.out.println("Your Grade is A+");
	}
	else if(i1.marks1 >440 && i1.marks1 <469)
	{
		System.out.println("Your Grade is A");
	}
	else if(i1.marks1 >391 && i1.marks1 <439)
	{
		System.out.println("Your Grade is B+");
	}
	else if(i1.marks1 >390 && i1.marks1 <350)
	{
		System.out.println("Your Grade is B");
	}
	else if(i1.marks1 >310 && i1.marks1 <349)
	{
		System.out.println("Your Grade is C");
	}
	else if(i1.marks1 >250 && i1.marks1 <309)
	{
		System.out.println("Your Grade is D");
	}
	else
	{
		System.out.println("You're Failed...Your Grade is E");
	}
    }
}
}

 class Bottom
{
  public static void main(String args[])
  {
  // Outer.Inner a1 = new Outer.Inner(); 
	//a1.function();
	
	OuterBase.base x11 =new OuterBase.base();
	x11.grade();	
	
	OuterBase x111 = new OuterBase();
	x111.done();
  }
}


class Outer
{
	//System.out.println("Enter Your name: ");
	  Scanner s = new Scanner(System.in);
	  String name = s.nextLine();
    //System.out.println("Enter Your Registration No.: ");
	  Scanner s1 = new Scanner(System.in);
	  long reg=s1.nextLong();
	//System.out.println("Enter Your section: ");
	  Scanner s2 = new Scanner(System.in);
	  int sec = s2.nextInt();
	//System.out.println("Enter Your Marks Out of 600: ");
	  Scanner s3 = new Scanner(System.in);
	  float marks =s3.nextFloat();
   
   static class Inner
  {
	   void function()
	  {
		  Outer x1 = new Outer();
		  
		  System.out.println("Your Name is: "+x1.name);
		  System.out.println("Your Reg.No is: "+x1.reg);
		  System.out.println("Your Section is: "+x1.sec);
		  System.out.println("Your marks is: "+x1.marks);
	  }
  }
}