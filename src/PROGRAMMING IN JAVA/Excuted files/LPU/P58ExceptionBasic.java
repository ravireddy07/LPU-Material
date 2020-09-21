/* implements exception handling:To handle exception explicitly,so that
program does not get terminated ,if exception comes. to handle exception 
expilictly try {} catch(){} is used.*/

class P58ExceptionBasic
{  
  public static void main(String args[])
   {    int i=90,data;
	try
	{ 
      		data=50/0; 
		{
			int a[]=new int[1];
			a[3]=90;
		}
		 }	

	/* catch block should always be written specific to general ,
if you write vice versa ,CTE will come*/

	catch(ArithmeticException e)
	{
		System.out.println(e);
	} 

	catch(ArrayIndexOutOfBoundsException onj)
	{

		System.out.println("not allowed"+onj);
	} 
	catch(Exception onj) 
 //general catch block because argument is of superclass exception type
	{

		System.out.println("i too dont know"+onj);
	} 
	

   System.out.println("rest of the code...");  
  }  
}  