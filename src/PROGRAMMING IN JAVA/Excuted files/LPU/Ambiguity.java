import java.util.*;

class Top
{
  void sum()
  {
	 int a=10;
     float b= 10;
    
      double d=a+b;
     System.out.println("Sum of Void Type: "+d);	  
  }
  int sum()
  {
	   int a=20;
     float b=20;
    
      double d=a+b;
     System.out.println("Sum of Int Type: "+d);	
  }
}

class Bottom
{
  public static void main(String args[])
  {
    Top a1 = new Top();
	a1.sum();
  }
}