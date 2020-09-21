/*this program implements Abstract class.if any class has one method 
as abstract (method with anstract keyword),it should be declared 
abstract class (abstract keyword in front of class).abstract method
is something whose defination cant be given, just declaration is given
in the parent class.Now the subclass either have to override the 
abstract method or it should declate itself as an abstract class.
An abstract class can have abstract(have to be overridden) and non 
abstract methods.Object of abstract class cant be created because its 
constructor is protected so it can be accessed by subclasses only.
1) It is possible to declare a class as an abstract class without 
having any abstract method.
2) When subclass is also declared as abstract class.it is not 
compulsory for it to define all the abstract methods of its super
 class.It may or may not define it.*/

import java.util.*;

/*abstract class as abstract keyword is written in its front*/

abstract class Animal    
{ 	
	String name;
	abstract void talk();  //abstract method only declared,no body
	abstract void sleep();	
	void eat()             //non abstract method ,has a body
	{ 
		System.out.println("depends on animal");
	}
}

abstract class Dog extends Animal
{	
/*defining abstract talk() but not abstract sleep(). because sleep is 
overridden as abstract direclty from super class*/
	
	 void talk() 
	{
	System.out.println("dog barks");
	}
}

/*non abstract class Pomeranian have to define all abstract methods
of its immediate parent i.e. only sleep method as talk(may or may not 
override) is defined by its parent*/

class Pomeranian extends Dog   
 {		
	void sleep()     
	{ 
		System.out.println("pomeranian sleeps at night");
	}
}

class P36AbstractClass
{
	public static void main(String [] args)
	{
		Dog ab=new Pomeranian();     //upcasting
		ab.talk();
		ab.sleep();
		ab.eat();
}
}


