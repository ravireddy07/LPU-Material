class CE extends Exception 
{
 	private int detail;
	CE(int a) 
	{
	detail = a;
	}
}
class P70CustomException
{
	static void compute(int a)throws CE
		{ 
			if(a > 10)
		     		throw new CE(a);}
		}
	public static void main(String args[]) 
		{
				try 
				{
				 compute(20);
				} 
				catch (CE e) 
				{
				  System.out.println("Caught " + e);
				}
		   	}
}
