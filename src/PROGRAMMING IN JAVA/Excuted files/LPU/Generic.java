import java.util.*;
import java.lang.Class;
/*
1-
2-Strong Compile Time Check
3-Type Casting is not Required for every Step.
*/
class FirstNonGen
{
	Object name;
	Object regd;
	
	Object fun(Object one, Object two)
	{
		this.name = one;
		this.regd = two;
		return name;
		//return regd;
	}
	void anotherfun()
	{
		System.out.println("Type of Class & data Type of Name: "+name.getClass().getName());
		System.out.println("Type of Class & data Type of Regd: "+regd.getClass().getName());
	}
}

class MainNonGen
{
	public static void main(String args[])
	{
		FirstNonGen obj = new FirstNonGen();
		int namee = (Integer)obj.fun(143,123);	
		System.out.println(""+namee);
		obj.anotherfun();
		
		FirstNonGen obj1 = new FirstNonGen();
		String namee1 = (String)obj1.fun("Ravi","11616140");	
		System.out.println(""+namee1);
		obj1.anotherfun();
	}
}