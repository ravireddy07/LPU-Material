/*This is the better way to write logic of add 2 numbers.In this, 
logic is written in one class 'SumLogic'(to keep it protected from outside 
world) and one more class is made 'P4SumBetter' consist of main().because
execution starts from main and logic is written in another class.So to 
access another class 'SumLogic' (Consist of logic) in class P3SumBetter
(consist of main),we need to make object of 'SumLogic' class
in main method. Then we will access the member method of class consist
of logic by using dot operator on object and member_method_name */

class SumLogic
{
void sum()
{
int a=10,b=20;     //Logic
int c=a+b;
System.out.println("sum is "+c);
}}

public class P3SumBetter
{
public static void main(String args[]) //main to call logic from another class
{ 
SumLogic obj=new SumLogic();
obj.sum();
}
}