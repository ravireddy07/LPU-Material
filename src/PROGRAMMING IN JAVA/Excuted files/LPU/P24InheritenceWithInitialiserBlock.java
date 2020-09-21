/*this program will implement instance initialiser block.it 
is represented  by /* {set of statements} */. after the super() 
call it is the next set of lines executed and then the rest of the 
lines of constructor*/

 class Animal 
{ 	String name;
	Animal()
	{ super();  //this is calling constructor of predefined Object class
	//at this point instance intialiser block is running	
	System.out.println("inside animal class constructor");	
	}

	{
	name="   wegra4egu4y     ";
	System.out.println("in animal instance intialiser block");
	 }

	void talk()
	{ 
	System.out.println("its' talking style depends on types of animal"+name);
	}
}
class Dog extends Animal
{	
	Dog()
	{
	//at this point instance intialiser block is running	
	System.out.println("inside Dog class constructor");
	}

	{
	name="   6876363486    ";
	System.out.println("in dog instance intialiser block");
	 }

}
class P24InheritenceWithInitialiserBlock
{
	public static void main(String [] args)
	{
		Dog ab=new Dog();    
		ab.talk();	
	}
}


