class CE extends Exception 
{
	private int detail;
	CE(int a) 
	{
	detail = a;
	}
}
class P71CustomException
{
	static void compute(int a)
		{ try{
			if(a > 10)
		     		throw new CE(a);}
		catch(CE ab)
		{
		System.out.println("Caught " + ab);
		
		}
	}
	public static void main(String args[]) 
		{
				try 
				{
				 compute(20);
				} 
				catch (Exception e) 
				{
				  System.out.println("Caught " + e);
				}
		   	}
}
