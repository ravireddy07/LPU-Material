//throw keyword for customized message
class P64EHWithThrowMessage
{
	public static void main(String arr[])
		{ try 
		   {
		throw new ArithmeticException("this is not allowed");
		    }

		
		catch (ArithmeticException e) 
		   {
		System.out.println("Second number must be non-zero   ");
		   }
		catch (Exception a) 
		   {
		System.out.println("Invalid Number of arguments   "+a);
		   }


  	}
}  