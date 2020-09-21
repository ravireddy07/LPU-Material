/*this program is used to perform method overloading comes under 
compile time polymorphism (CTPMO) i.e. When the class has more than 
one method with same name but are diffefentiated from each other 
either by any one of three conditions:
1) by the number of arguments
2) By the data type of arguments
3) by the order of arguments 
IMPORTANT: it can have same of different return type ,doesn't matter*/

class LogicCTPMO
{ int a,b;
 
void sum()
{
System.out.println("inside NO parameter sum");
}

void sum(int aa,int bb)
{
a=aa;
b=bb;
System.out.println("inside int int parameter sum "+(a+b));

}
void sum(float a,float b,float c)
{
System.out.println("inside float float float parameter sum  "+(a+b+c));

}
void sum(float a,int b)
{

System.out.println("inside float int parameter sum" +(a+b));

}
void sum(int a,double b)
{
System.out.println("inside int double parameter sum"+(a+b));
}


}
class P25CTPMO
{
public static void main(String args[])
{
LogicCTPMO ob1=new LogicCTPMO();
ob1.sum();
ob1.sum(5,6);
ob1.sum(5.6f,6.6f,6.7f);
ob1.sum(5.6f,6);

}
}           