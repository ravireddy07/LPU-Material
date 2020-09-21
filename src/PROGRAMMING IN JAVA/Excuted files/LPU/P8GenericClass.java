//generics

class LogicGen<anything>
{

	void get(anything ob)
		{
		System.out.println(ob);	
		}
	void belonging(anything ob)
			{
	System.out.println("anything is" +ob.getClass().getName());
			}
}

class P8GenericClass
{
	public static void main(String args[])
		{
		LogicGen<Integer> obj=new LogicGen<Integer>();
		obj.get(44);
		obj.belonging(46);


		LogicGen<String> obj1=new LogicGen<String>();
		obj1.get("44");
		obj1.belonging("45");
		
		//obj=obj1;
		
		}
		
		
}
	
