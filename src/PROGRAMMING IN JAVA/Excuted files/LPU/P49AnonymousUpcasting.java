//Java program to demonstrate Anonymous inner class  , to override method of class

class Age
{
    static final int x = 21;
    void getAge()
    {
      //  System.out.println("Hello");
    }
}
class A extends Age
{ 
    int x = 21;
    void getAge(){
System.out.println("inside getAge of Age class");}  
}

class P49AnonymousUpcasting
{
    public static void main(String[] args) 
	{
           Age obj1 = new A() 	 //extends Age class  upcasting
		{
			static final int x=9;
            		public void getAge() 
				{
                		System.out.println("inside getAge of Age class");
           		 	}
        	};
        obj1.getAge();

	A obj2 = new A()      //implements interface A	
		{
            		public void getAge() 
				{
                		System.out.println("inside getAge of interface");
           		 	}
        	};
		obj2.getAge();
    }
}