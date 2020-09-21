/*  This program is used to perform UPCASTING i.e. 
when object of sub class is stored in reference variable of super 
class. It comes into existence only with inheritence and method 
overriding. It is the case when method is non static:(object creation
is important to invoke those methods)*/
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
	void talk()
	{ 		
	System.out.println("   barks");	
	}
}
class P27RunTimePolymorphismUpCasting 
{	public static void main(String [] args)
	{	Animal ab=new Animal();  
		ab.talk();              //talk of animal

		Dog ab1=new Dog();  
		ab1.talk();            //talk of dog

		Animal ab=new Dog();  
		ab.talk();
	      
/*talk of dog because at run time it will check the type of object so
call the non static method of object type*/
	}
}