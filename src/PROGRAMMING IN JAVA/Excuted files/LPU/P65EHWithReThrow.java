//throw keyword for rethrow exception to call area
class LogicEHWithReThrow
{
	void rethrowCode()
	{
		try 
		   {
		throw new ArithmeticException("this is not allowed");
	          }

		catch (NullPointerException e) 
		   {
		System.out.println("try belongs to call area  "+e);
		   throw e;
		    }

		
	}
}
class P65EHWithReThrow
{
	public static void main(String arr[])
		{ try 
		   {
		LogicEHWithReThrow obj=new LogicEHWithReThrow();
			obj.rethrowCode();
		   }

		catch (NullPointerException e) 
		   {
		System.out.println("in main   "+e);
		   }

		
  	}
}  