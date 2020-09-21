/*this program performs basic inheritence when sub class as it is 
inheriting the common properties(DM) and behaviour (MM)of super class
 and do not define anything  within its own body*/


class Animal    //super class
{ 	void talk()
	{
	System.out.println("its' talking style depends on types of animal");
	}
}

/*sub class using extends can access all public,default and protected
 data*/

class Dog extends Animal   
{	
}


class P20basicInheritence
{
	public static void main(String [] args)
	{
		Dog ab=new Dog();    
		ab.talk();

/*talk() of animal class will get invoked with the object of Dog 
class because Dog is not having any talk() method and it is 
 inheriting the features of Animal class .So it can access the talk() 
method  od animal class*/
		
	}
}


