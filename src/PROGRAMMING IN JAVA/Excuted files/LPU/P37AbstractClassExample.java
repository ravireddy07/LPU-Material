/*this program implements the concept of abstract class*/

import java.util.*;
abstract class Vehicle
{ 	
	String name;
	abstract void speed();
	void a()
	{ 
	System.out.println("inside a method of Vehicle class");
	}
}

abstract class Car extends Vehicle
{	
	int no_of_seater; 
	void aeroDynamics()
	{
	System.out.println(" every car have same aerodynamics");
	}
}

class JeepCompass extends Car
{	void speed()
	{
	System.out.println(" jeep compass gived 100km/h");
	}	
}
class P37AbstractClassExample
{
	public static void main(String [] args)
	{
		Car obj=new JeepCompass();
		obj.speed();
		obj.aeroDynamics();
	}
}


