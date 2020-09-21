/* this program is implementint the concept of lambda expression when
abstract method of interface is not habing any argument,Lambda 
expression is used to override the method directly,without using extends
keyword and without using anonymous class.

Constraint is lambda exp. is only applicable on functional 
interface(is a I/F which can have only one abstract method).Any interface
can be made functional interface using annotation at the top.*/



@FunctionalInterface   //called annotation
interface Try
{  
   void say(); //can have only one abstract method as it is functional interface

}  
public class P54LambdaNoArgs
{  
	public static void main(String[] args) 
	{  
	/*Syntax: I/f_name ref_var=(list_of_args)-> {content};*/


    		Try t=()->
		{
		System.out.println("say method of interface is defined here");
		};
		t.say();   //call lambda exp (ref_var.name_of_abstract_method_of _interface)
	 
 	}  
}