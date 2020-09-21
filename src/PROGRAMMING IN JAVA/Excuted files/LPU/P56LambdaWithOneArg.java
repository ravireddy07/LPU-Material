/* concept of lambda expression when abstract method of interface 
is of type with return type and one argument*/

@FunctionalInterface
interface Increment
{  
    public int increase(int a);    //with args with return type
}  
class P56LambdaWithOneArg
{  
	public static void main(String[] args) 
	{  
         	Increment obj=(a)->++a; 

/*when only one statement,body and return keyword are optional*/
   		System.out.println(obj.increase(9)); 

		Increment obj1=a->
			{	
			++a; 
			return a+=10;   //compound assignment
			}; 
	/*with body return keyword becomes compulsory*/

		System.out.println(obj1.increase(11));
	}  
}  