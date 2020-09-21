// Java program implementing Singleton class (class for which only 
one object can be created): to make any class singleton there are 
two conditions: 
(1) Its constructor should be made private: so that no new object can
 be created from outside the class.
(2) It should have one public(accessible everywhere) static
 (without making object can be called) method with return type, with 
which outside world interact with singleton class. As it is the member
 of the class ,it can even access the private constructor of the class*/

class Singleton1
{
   private static Singleton1 single_instance = null;
    public String s;
 
     private Singleton1()   //private constructor
    {
        s = "Hello I am a string part of Singleton class";
    }

 /*public static method have return type as refernce variable 
:to return address of one object to outside world*/
  
    public static Singleton1 getInstance() 
	  {
        	if (single_instance == null)
            	{
		single_instance = new Singleton1();
		}
 	return single_instance;
    	}
}
 
class P30SingletonClass
{
    public static void main(String args[])
    {    //all XYZ refers to same object
        // instantiating Singleton class with variable x
        Singleton1 x = Singleton1.getInstance();
 
        // instantiating Singleton class with variable y
        Singleton1 y = Singleton1.getInstance();
 
        // instantiating Singleton class with variable z
        Singleton1 z = Singleton1.getInstance();
 
        // changing variable of instance x
        x.s = (x.s).toUpperCase();
 
        System.out.println("String from x is " + x.s);
        System.out.println("String from y is " + y.s);
        System.out.println("String from z is " + z.s);
        System.out.println("\n");
 
        // changing variable of instance z
        z.s = (z.s).toLowerCase();
 
        System.out.println("String from x is " + x.s);
        System.out.println("String from y is " + y.s);
        System.out.println("String from z is " + z.s);
    }
}