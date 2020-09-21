/*This is the basic way to add 2 numbers.Complete logic is written 
inside main() method because execution starts from main(). But this
is not good idea.we will see better idea later on.*/

/*This is hardcoded code, no interaction from user,everthing written
by programmer itself*/


public class P2Sum
{
public static void main(String args[])
{ int a=10,b=20;
 //int a,b = 1,2;
int c=a+b;
System.out.println(c);//assign sum to third variable and print
System.out.println((a+b));//assign sum directly in round parenthesis
System.out.println("the sum of a and b is "+(a+b)); 

/*when we want to print value with a message we use '+' overidden 
operator to concatenate the variable value  with message statement,
because print method predefined with only one string type argument.*/


System.out.println("sum of "+a+ " and "+b+" is "+(a+b)); //O/p :sum of 10 and 20 is 30

//when want to concatenate the varibale value within the statement
}
}
