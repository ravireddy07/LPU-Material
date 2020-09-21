/*Java program to demonstrate Anonymous inner class to access its 
local methods.anonymous class can either access the overridden methods
 or local methods of the anonymous class outside it.*/

class Age
{
    int x = 21;
    void getAge()
    {
        System.out.println("inside getAge of Age class");
    }
    void Abc()
    {
        System.out.println("inside Abc of age class");
    }
}
class P45AnonymousClassWayTwo
{
    public static void main(String[] args) 
	{
     	new Age()    
	 { 	int a=90;
    		void getAge()
    		  {
        	     System.out.println("inside overridden getAge by anonymous class");
    		  }
		  void abc()
    		  {
        	     System.out.println("inside overridden abc by anonymous class");
    		  }

		  void a()
    		  {
        	     System.out.println("inside local method a of anonymous class");
    		  }
		  			
        }.a();     
/*we can only call the local method of anonymous class by dot operator
at the closing place of anonymous class .When we use this, then way one 
of reference variable creation can not be done.*/
		
  }
}