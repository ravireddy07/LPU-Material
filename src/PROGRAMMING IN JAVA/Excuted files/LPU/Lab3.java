//write a program to create a class which is managing the information of vechile such as price,mileage and fuel. instaed the vechile parameters being initilised with default value,use parameterized constructors for this purpose. thsi class must have a method int getFuel() which returns the amount of fuel.

import java.lang.*;
import java.util.*;

class Vech
{
	double price;
	double mileage;
	int fuel;
	
	 Vech(int a, int b, int c)
	{
		int p1 = a;
		int p2 = b;
		int p3 = c;
		price  = 27000.0;
		mileage  = 27.5;
		fuel = 50;
	}
	
	int getFuel()
	{
		
	    System.out.println("The amount of Fuel is:"+fuel);
		return(fuel);
	}
}

class Car extends Vech
{
	public static void main(String args[])
	{
		Vech v1 = new Vech(10,20,30)
		{
			String car_name = "Ferrai";
			int getFuel()
			{
				System.out.println("The car name is:"+car_name);
				System.out.println("The amount of Fuel is:"+fuel);
				return(fuel);
			}
		};
		v1.getFuel();
	}
}