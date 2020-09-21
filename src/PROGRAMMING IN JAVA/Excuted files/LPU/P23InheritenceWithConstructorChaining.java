/*this program will implement constructor chaining. when i want to 
call immediate parent class cnstructor I will mentions super(); 
otherwise super(set of actual arguments); .Super should be the 
first statement in constructor otherwise CTE*/
 
class Animal 
{ 	String name;
	Animal()
	{
	System.out.println("inside animal class constructor");	
	}
	void talk()
	{
	System.out.println("inside animal class talk method");
	}
}
class Dog extends Animal
{	
	Dog()
	{
 /*super();  implicitly no parameterised super() is written here, 
whether you write or not.it will call immediate parent class's no 
parameterised constructor. If you explicitly mention it,
super(set of actual parameter); it will call that parameterised 
constructor of immediate parent class.
*/

	System.out.println("inside Dog class constructor");	
	}
}
class P23InheritenceWithConstructorChaining
{
	public static void main(String [] args)
	{
		Dog d=new Dog();
		d.talk();

	}
}


