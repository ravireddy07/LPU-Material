
class EHRethrow
{
int a;
void rethrow(int a)
{
if(a>90)
throw new ArithmeticException();
else
System.out.println("no exception came");
}

}

class P66RethrowWithoutTry
{
	public static void main(String arr[])
		{ try 
		   {
			EHRethrow obj=new EHRethrow();
			obj.rethrow(100);
			
		    }
		catch (ArithmeticException e) 
		   {
		System.out.println("Second number must be non-zero   "+e);
		   }

		catch (Exception a) 
		   {
		System.out.println("Invalid Number of arguments   "+a);
		   }

  	}
}  