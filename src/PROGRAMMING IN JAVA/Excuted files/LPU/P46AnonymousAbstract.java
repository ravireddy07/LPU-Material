//Java program to demonstrate Anonymous inner class  on abstract class  , to override method of class

abstract class Age
{
    int x = 21;
     abstract void getAge();
   
}
class P46AnonymousAbstract
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