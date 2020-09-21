import java.util.*;
import java.io.*;

class CE extends Exception
{
	private int new_a,new_b;
	
	CE(int a, int b)
	{
		new_a = a;
		new_b = b;
	}
}


class Outer
{
  static void Constructor1(int a,int b)throws CE
  {
	  if(a>10 || b>10)
	  {
		  try
		  {
			  throw new CE(a,b); 
		  }
		  catch(Exception ab)
		  {
			  System.out.println("Enter less than 10 of a & b");
		  }
	  }
  }

  static public void main(String args[])
  {
	   try 
     {
		 Scanner sc = new Scanner(System.in);
		 Scanner sc1 = new Scanner(System.in);
		 System.out.println("Enter the values of a & b less than 10:");
		 
			int a = sc.nextInt();
			int b = sc.nextInt();
			
	   Constructor1(a,b);
	   int c = a*b;
	   System.out.println("Multiplication: "+c);
     }
       catch(CE e)
    {
	   System.out.println("Caught"+e);
    }
  }
}