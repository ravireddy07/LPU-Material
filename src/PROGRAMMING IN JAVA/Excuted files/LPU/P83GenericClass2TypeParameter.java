//generics for 2 type parameters separated by commas

class LogicGen<anything,something>   //2 type parameters
{
	anything ob1;
	something ob2;
	anything get(anything ob1,something ob2)
		{
			this.ob1=ob1;
			this.ob2=ob2;
			return ob1;
		}
	void belonging()
			{
	System.out.println("anything is" +ob1.getClass().getName());
		
	System.out.println("anything is" +ob2.getClass().getName());
				}
}

class P86GenericClass2TypeParameter
{
	public static void main(String args[])
		{
		LogicGen<Integer,String> obj=new LogicGen<Integer,String>();
		int a=obj.get(44,"abc");
		System.out.println(""+a);
		obj.belonging();
		}
		
		
}
	
