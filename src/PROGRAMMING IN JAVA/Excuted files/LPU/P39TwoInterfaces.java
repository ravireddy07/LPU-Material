/*to implement interface extends interface*/

import java.util.*;
interface Vehicle  //first interface 
{ 	
	void speed();
}

interface Truck extends Vehicle   //second interface
{ 	
	void aerodynamics();
}

class Alto implements Truck
{
	public void aerodynamics()
		{
		System.out.println("inside obverridden aerodynamics");
		}

	public void speed()
		{
		System.out.println("inside overridden speed");
		}
	
}

class P39TwoInterfaces
{
	public static void main(String [] args)
	{ 	
		Alto obj=new Alto();
		obj.aerodynamics();
		obj.speed();
	}
}


