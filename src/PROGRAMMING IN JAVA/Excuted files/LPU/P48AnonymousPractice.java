/*Java program to demonstrate two Anonymous inner class  , first to 
override method of class and second to override methods of interface*/

class Age
{
    static final int x = 21;
    void getAge()
    {
        System.out.println("Hello");
    }
}
interface A 
{ 
    int x = 21;
    void getAge();  
}

class P48AnonymousPractice
{
    public static void main(String[] args) 
	{
           Age obj1 = new Age() 	 //first anonymous class extends Age class
		{
			static final int x=9;
            		public void getAge() 
				{
                		System.out.println("inside getAge of Age class");
           		 	}
        	};
        obj1.getAge();


			A obj2 = new A()      //2nd anonymous class implements interface A	
		{
            		public void getAge() 
				{
                		System.out.println("inside getAge of interface");
           		 	}
        	};
		obj2.getAge();

	
    }
}