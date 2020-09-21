/* concept of lambda expression when abstract method of interface 
is of type with return type and no argument*/

@FunctionalInterface
interface Welcome
{  
    public String display();  
}  
class P55LambdaWithReturn
{  
	public static void main(String[] args) 
	{  
         	Welcome obj=()->
			{  
        		 return "Welcome to java class"; //with return
    			};  

		String s=obj.display();
		System.out.println(s);   //one way

    		System.out.println(obj.display());    //second way 
	}  
}  