/*  This program is used to perform Downcasting i.e. 
when object of super class is stored in reference variable of sub 
class. It comes into existence only with inheritence and method 
overriding. It does not happen implicitly .We need to do it explicitly
(same like type casting)*/

import java.util.*;
class Animal 
{ 	String name;
	  void talk(Animal a )
	{	
	System.out.println("depends on animal");
	}
}

class Dog extends Animal
{ 	
	void talk(Animal a)     //dog reference to animal (upcasting)
	{ 	
		if(a instanceof Dog)
		{	
		Dog d1=(Dog)a;       //downcasting
		System.out.println("   barks");	
		}
	}

}


class P29RunTimePolymorphismDownCasting
{	
	public static void main(String [] args)
	{
	P29RunTimePolymorphismDownCasting obj=new P29RunTimePolymorphismDownCasting();
	Animal ab;	
	Dog d=new Dog();
	d.talk(d);            //with argument type method
	obj.A(d);
	}


	public void A(Animal a)    //upcasting
	{
		if(a instanceof Dog)
		{
		Dog d1=(Dog)a;    //downcasting
		d1.talk();
		System.out.println("hefjwefj");
		}
	}
}


