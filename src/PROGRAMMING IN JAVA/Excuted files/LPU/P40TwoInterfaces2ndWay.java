/*to implement interface extends interface*/

import java.util.*;
interface Vehicle  //first interface 
{ 	
	void speed();
}

interface Truck  //second interface
{ 	
	void aerodynamics();
}

class Alto implements Truck,Vehicle
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

class P40TwoInterfaces2ndWay
{
	public static void main(String [] args)
	{ 	
		Alto obj=new Alto();
		obj.aerodynamics();
		obj.speed();
	}
}


