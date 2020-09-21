/*upto JDK 1.5 genrics were not there so this concept of any type of data
was handled by object class. Disadvantages : no type safety,no string co
compile time checking, type casting required everytime*/
import java.util.*;
import java.lang.*;

class LogicNonGen    //non generic class cuz no diamond bracket
{
	Object ob;    //super class Object type data member
	Object display(Object ob) //super class Object type method
		{
			this.ob=ob;
			return ob;
		}
	void belonging()
			{
	System.out.println("anything is" +ob.getClass().getName());
			}
}

class P85WithoutGenericClass
{
	public static void main(String args[])
		{
		LogicNonGen obj=new LogicNonGen();   //no diamond generic
		int a=(Integer)obj.display(44);   //type casting required
		System.out.println(""+a);
		obj.belonging();

		LogicNonGen obj1=new LogicNonGen();
		String s=(String)obj1.display("seefhkwjf");
		System.out.println(""+s);
		obj1.belonging();

		//obj=obj1;
//it would be done successsfully but should not happen,no type safety
		}
}
