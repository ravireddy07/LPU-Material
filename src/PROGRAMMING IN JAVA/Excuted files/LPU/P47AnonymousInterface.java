//Java program to demonstrate Anonymous inner class  on interface  , to override method of class

interface Age
{
    int x = 21;
     void getAge();
   
}
class P47AnonymousInterface
{
    public static void main(String[] args) 
	{
        Age oj1 = new Age() 	
		{           //start of anonymous class
            		public void getAge() 
			{
                	System.out.print("Age is "+x);
           		 }
        	};
        oj1.getAge();
    }
}