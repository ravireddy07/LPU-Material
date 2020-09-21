/*this program implements the concept of Interface.An interface is 
advancement in abstract class.It can only have abstract(have to be 
overridden),default and static methods.Object of interface cant be 
created.It does not have constructor.All the abstract methods of 
interface have to be overridden by the class which implements the 
interface. The class implements interface can override default methods
. One CTE of weaker access will come: Because it says if super class 
or interface have an access specifier with its method then the 
subclass extends or implements the super class or interface have to 
provide a strong access specifier.order of access specifier is 
(private<default<protected<public).*/


import java.util.*;
interface Vehicle  //instead of class keyword interface keyword
{ 	
	void speed();         //implicitly methods are public abstract
	
	static void ab()      //static methods can be defined in I/F
		{
		System.out.println("in interface static ab method");
		}

	default void a()      //default methods can be defined in I/F
		{
		System.out.println("in interface default a method");
		}
}

 class Car implements Vehicle  //interface is inherited by class using implements keyword
{	
/*giving defination to abstract method speed of interface.It can
 override default method of interface.*/
	
	 public void speed()
		{
		System.out.println(" in car class speed method");
		}

	public void a()      //overridden default method of interface
		{
		System.out.println("in class car default a method");
		}
}
class JeepCompass extends Car
{		
	 public void speed()  //overridding speed of car
	{
	System.out.println(" in jeep class speed method");
	}
}
class P38Interface
{
	public static void main(String [] args)
	{ 	JeepCompass obj=new JeepCompass();
		obj.speed();  //call speed of jeepcompass class

		Car obj1=new JeepCompass();
		obj1.speed();//call speed of jeepcompass class (upcasting)

/*calling overridden default method of interface with object of car, 
as car implements vehicle*/
		Car obj2=new Car();
		obj1.a();       

		Vehicle.ab();   //static method can be called with class name
	}
}


