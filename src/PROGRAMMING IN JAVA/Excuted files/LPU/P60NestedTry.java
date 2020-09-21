//try catch within another try block
class P60NestedTry
{  
 	public static void main(String args[])
	{  
 	 try
	{  
    		try
			{  
     			System.out.println("going to divide");  
     			int b =39/0;  
    			}
		catch(ArithmeticException e)
			{
			System.out.println(e);
			}  
   
    		try
			{  
    			int a[]=new int[5];  
    			a[5]=4;  
    			}
		catch(ArithmeticException e)
			{
			System.out.println(e);
			}  
     
    			System.out.println("other statement");  
 	}	
	catch(NullPointerException e)
		{
		System.out.println("handeled");
		}  
  
  	System.out.println("normal flow..");  
 }  
}  