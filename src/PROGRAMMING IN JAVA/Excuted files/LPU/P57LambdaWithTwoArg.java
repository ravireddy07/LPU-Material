/* concept of lambda expression when abstract method of interface 
is of type with return type and twoargument*/

import java.util.*;
@FunctionalInterface
interface Sum
{  
    public int addition(int a,int b);  
}  
class P57LambdaWithTwoArg
{  
	public static void main(String[] args) 
	{  
		//Sum obj=(int a, b)->(a+b);   //mentioning for one arg not allowed  
         	Sum obj=(int a,int b)->(a+b);   //either mention declaration for both arguments 
		Scanner sc=new Scanner(System.in);
		int a=sc.nextInt();
		int b=sc.nextInt();
    		System.out.println(obj.addition(a,b)); 

		Sum obj1=(x,y)->(x+y);  //or do not mention declaration for both arguments 
		System.out.println(obj1.addition(9,10)); 
	}  
}  