/*  This program is used to perform UPCASTING with static methods i.e. 
when object of sub class is stored in reference variable of super 
class. It comes into existence only with inheritence and method 
overriding. It is the case when method is static:( No object creation
needed to invoke those methods)*/

import java.util.*;
class Animal 
{ 	
	String name;
	  static void talk()
	{		
	System.out.println("depends on animal");
	}
}

class Dog extends Animal
{ 	
	static void talk()
	{ 		
	System.out.println("   barks");	
	}
}


class P28RunTimePolymorphismForStaticMethods 
{	public static void main(String [] args)
	{	Animal ab=new Animal();  
		ab.talk();              //talk of animal

		Dog ab1=new Dog();  
		ab1.talk();            //talk of dog

		Animal ab=new Dog();  
		ab.talk();
	      
/*talk of animal, because at run time it will check the type of object so
try to call the method of object type. But it saw that method is static so
its call does not depend on object.so super class talk() will get called in actual.*/
	}
}


