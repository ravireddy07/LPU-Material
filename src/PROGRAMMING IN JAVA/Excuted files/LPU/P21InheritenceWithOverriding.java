/*this program performs basic inheritence when sub class, instead of 
as it is inheriting the common properties(DM) and behaviour (MM)of 
super class,the subclass is having priviledge to provide a new 
defination to the inherited feature (Concept called Overriding)*/

import java.util.*;
class Animal 
{ 	
	String name;
	void talk()
	{
	System.out.println("depends on animal");
	}

}

class Dog extends Animal
{	
/*overridden talk() method :method belongs to all the types of animal
 but dog modified the inherited version of talk() in his own style*/
	
	void talk()     
	{ 
		Scanner sc=new Scanner(System.in);
		System.out.println("give name to dog");
		name=sc.next();
		System.out.println(name+"   barks");
	}
}


class P21InheritenceWithOverriding
{
	public static void main(String [] args)
	{
		Dog ab=new Dog();  
		ab.talk();
//talk() is defined in Dog class so compiler will search for talk
 method from the reference and object type (i.e. Dog in this case) 
it will search the talk() in Dog class ,If it is found in Dog class 
it will execute it.if it is not found in Dog class, then compiler 
will check, is this class inheriting some class ? if yes then compiler
will search for talk() method in Animal class and run it.

	}
}


