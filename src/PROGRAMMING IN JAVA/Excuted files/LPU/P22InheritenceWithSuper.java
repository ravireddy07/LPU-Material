/*this program performs basic inheritence when sub class, instead of 
as it is inheriting the common properties(DM) and behaviour (MM)of 
super class,the subclass is having priviledge to provide a new 
defination to the inherited feature (Concept called Overriding).
But now with the object of sub class i want to call the method of 
super class using "super" keyword over Data members,member methods 
and constructor. Super is by default non static*/

import java.util.*;
class Animal 
{ 	
	String name;
	void talk()
	{
	System.out.println(name+"depends on animal");
	}

}

class Dog extends Animal
{	void talk()
	{ 
//this string will get assigned to name Property of animal class 

	super.name="name of animal class";
	super.talk(); //animal class talk()will get called
  
		Scanner sc=new Scanner(System.in);
		System.out.println("give name to dog");
		name=sc.next();
		System.out.println(name+"   barks");
	}
}


class P22InheritenceWithSuper
{
	public static void main(String [] args)
	{  	Animal a=new Animal();
		a.talk();     //talk of animal class will get called
		
		Dog ab=new Dog(); 
		//super.talk() CTE:static main and non static super
		ab.talk(); //talk of Dog class will get called   
	}
}


