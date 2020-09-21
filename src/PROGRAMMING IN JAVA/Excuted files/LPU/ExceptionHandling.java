import java.util.*;

class program1
{
	int a,b,c;
	int ar[] = new int[10];
	
		void array()
		{
		try
		{
		System.out.println("Enter the Array Elements: ");
		Scanner one = new Scanner(System.in);
		for(int i=0;i<15;i++)
		{
			ar[i] = one.nextInt();
		}
		}
		catch(ArrayIndexOutOfBoundsException e)
		{
			System.out.println("You have entered more values than the array size...!!");
		}
		}
		
		void zero()
		{
			Scanner two = new Scanner(System.in);
			Scanner three = new Scanner(System.in);
			System.out.println("Enter the values of a & b: ");
			System.out.println("Try to enter the value of b as Zero to arise the exception:");
			a = two.nextInt();
			b = three.nextInt();
			try
			{
				c = a/b;
				System.out.println("Sum of a & b is:"+c);
			}
			catch(ArithmeticException aa)
			{
				System.out.println("Exception is came & name of exception is: "+aa);
			}
		}
}

class mainprogram1
{
	public static void main(String args[])
	{
		program s1 = new program();
		s1.array();
		s1.zero();
	}
}