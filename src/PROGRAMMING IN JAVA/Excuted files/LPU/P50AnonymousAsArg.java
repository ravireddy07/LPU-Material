//Anonymous class as an argument

interface Message 
{
   String greet();
}

public class P50AnonymousAsArg implements Message
{
	public void displayMessage(Message m) 
	{
      		System.out.println(m.greet()); 
	 }

   	public static void main(String args[]) 
	{
      		P50AnonymousAsArg obj = new P50AnonymousAsArg();
      		obj.displayMessage(new Message() 
				{
         				public String greet() 
					{
            				return "hello";
         				}
      				});
   }
}

//You can,refer to an object that implements an interface by the type of the interface. 