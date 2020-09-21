//write a program to create a class which is managing the information of vechile such as price,mileage and fuel. instaed the vechile parameters being initilised with default value,use parameterized constructors for this purpose. thsi class must have a method int getFuel() which returns the amount of fuel.

import java.lang.*;
import java.util.*;

class Vech
{
	int price;
	int mileage;
	int fuel;
	
	 Vech(int p, int m, int f)
	{
		price  = p;
		mileage  = m;
		fuel = f;
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
		Vech v1 = new Vech(143,27,50)
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