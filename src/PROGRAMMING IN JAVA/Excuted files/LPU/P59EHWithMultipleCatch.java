//try block with multiple catch blocks,but only one catch block
of all would be working at a time,with which ex eption would actually be matching.
multiple catch blocks should be written from specific to general otherwise CTE will come.
class P59EHWithMultipleCatch
{
	public static void main(String arr[])
		{ try 
		   {
		      int a= Integer.parseInt(arr[0]); 
		      int b= Integer.parseInt(arr[1]);
		      int c = a/b;
		      System.out.println("Result is: "+c);
	           }

		catch (ArithmeticException e) 
		   {
		System.out.println("Second number must be non-zero   "+e);
		   }

		catch (NumberFormatException n) 
		  {
		System.out.println("Arguments must be Numeric   "+n);
		   }

		catch (ArrayIndexOutOfBoundsException a) 
		   {
		System.out.println("Invalid Number of arguments   "+a);
		   }
		catch (Exception a) 
		   {
		System.out.println("Invalid Number of arguments   "+a);
		   }
		
  	}
}  