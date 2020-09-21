/*generics are used,when programmer is not clear which type of objects
(Wrapper Objects) user will give.So we define a generic class for all
type pf parameters.Whatever data user will pass,It will work according
to that data type. A class is made generic using <list of type parametrs int it>
It has 3 advantages: Strong compile time checking, no type casting,
type safety*/

class LogicGen<anything>     //generic class
{
	anything ob;     //generic type data member
	anything get(anything ob)   //generic method with generic ret and argument type
		{
		this.ob=ob;
		return ob;
		}

	void belonging()
			{  //used to know actual type of generic
	System.out.println("anything is" +ob.getClass().getName());
			}
}

class P86GenericClass
{
	public static void main(String args[])
		{
		LogicGen<Integer> obj=new LogicGen<Integer>(); 
//genric object and here we mention actual type of objects being passed
		int a=obj.get(44);  //unboxing
		System.out.println(""+a);
		obj.belonging();


		LogicGen<String> obj1=new LogicGen<String>();
		String aa=obj1.get("44");   //no type casting required
		System.out.println(""+aa);
		obj1.belonging();
		
/*obj=obj1; CTE, string object cant assigned to integer object,
Strong compile time checking*/
		
		}
		
		
}
	
