/*program to know difference between local, class, instance and 
reference variable*/

class LogicVariableTypes
{ 
int a;            //instance variable or non static variable
static int b;       //static variable or class variables

void logicVariable()
{
int c=10;    //local variable:must be intialised before use else CTE
b=b+1;          
System.out.println("static b is: "+b);
a++;
System.out.println("instance a is: "+a);
System.out.println("local c is: "+c);
}}
 
public class P5VariablesTypes
{
public static void main(String args[])
{
LogicVariableTypes obj1=new LogicVariableTypes();  //object1 and obj1,obj2,obj3 are reference variables
obj1.logicVariable();
System.out.println("\n");

LogicVariableTypes obj2=new LogicVariableTypes();   //object 2
obj2.logicVariable();
System.out.println("\n");

LogicVariableTypes obj3=new LogicVariableTypes();   //object3
obj3.logicVariable();

}}