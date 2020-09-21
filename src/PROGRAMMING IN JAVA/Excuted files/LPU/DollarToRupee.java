import java.lang.*;
import java.util.*;

class One
{
	double updation(double dd,double k)
	{
	   dd += (dd*k);
	   return dd;
	}
}
class Convert 
{
	public static void main(String args[])
	{
	   One a1 = new One();
	   double doller = 60;
	   
	    Scanner s1 = new Scanner(System.in);
		System.out.println("Enter the Amount in Rupee to be converted to Doller");
	    double rupee = s1.nextDouble();
		
		
		double result = rupee/doller;
		System.out.println("The Converted value is: "+result);
		
	   
	   Scanner s2 = new Scanner(System.in);	
	   System.out.println("Enter the % to be updated");
	   double up = s2.nextDouble();
	   
	  doller = a1.updation(doller,up);
		result = rupee/doller;
		System.out.println("The Converted value is: "+result);
	}
}