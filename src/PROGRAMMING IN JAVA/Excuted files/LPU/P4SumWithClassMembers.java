/* A class has body ,Set of data members and set of member 
methods(functions). Data members are properties of objects.Member 
methods are behaviour of objects.

class SumWithClassMembers
{
data members;   //declare properties of objects
member methods  // logic in methods body
}   */

class SumWithClassMembers
{
int d;       //a and b are data members
int f;
void sum(int i, int j)      //member method
{
	d=i;
	f=j;
int c=d+f;
System.out.println("sum is "+c);
}
}
public class P4SumWithClassMembers
{public static void main(String args[])
{ 
SumWithClassMembers obj=new SumWithClassMembers();
int a=9;
int b=10;
obj.sum(a,b);
}
}


