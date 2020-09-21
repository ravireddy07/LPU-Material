/*Java program to demonstrate Anonymous inner class:it is used to
 override method of a class from another class at the time of 
declaration directly without using extends.Anonymous class has 
to either extends or implements at a time. It can not do both and can't
perform multiple inheritence of interface.Anonymous class can override
all the methods of a class. But anonymous class can either access the 
overridden methods or local methods of the anonymous class outside it.
Anonymous class cannot have constructor because constructor should have 
same name as that of the class but anonymous class do not have any 
name.As it has no constructor,It can not have object as well.
*/

import java.util.*;
import java.lang.*;
class Age
{
    int x = 21;
    void getAge()
    {
        System.out.println("inside getAge of Age class");
    }
    void Abc()
    {
        System.out.println("inside Abc of age class");
    }
}
class P44AnonymousClassWayOne
{
    public static void main(String[] args) 
	{
/*obj is reference of type age, So it can only access the overridden 
methods from the anonymous class.But it can not access the methods 
defined inside anonymous class*/

     	Age obj=new Age()    
	 { 	int a=90;
    		void getAge()
    		  {
        	     System.out.println("inside overridden getAge by anonymous class");
    		  }
		  void Abc()
    		  {
        	     System.out.println("inside overridden abc by anonymous class");
    		  }
		  			
        };     //end of anonymous class
		
	obj.getAge();    //overridden
	obj.Abc();       //overridden
	//obj.local();     can't access because local method doesn't belong to type of obj i.e. Age class
    }
}