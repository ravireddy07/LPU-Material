/*this program is used to perform comes under compile time 
polymorphism Constructor overloading (CTPCO). i.e. When the class has
 more than one constructor with same name but are diffefentiated from
 each other by either of three conditions:
1) by the number of arguments
2) By the data type of arguments
3) by the order of arguments 
IMPORTANT: constructor does not have any return type*/

class LogicCTPCO
{ 

LogicCTPCO()
{
System.out.println("inside NO parameter sum");
}

LogicCTPCO(float a,float b,float c)
{
System.out.println("inside float float float parameter sum  "+(a+b+c));

}
LogicCTPCO(float a,int b)
{
System.out.println("inside float int parameter sum" +(a+b));
}

LogicCTPCO(int a,float b)
{
System.out.println("inside int float parameter sum" +(a+b));
}

LogicCTPCO(int a,double b)
{
System.out.println("inside int double parameter sum"+(a+b));
}
LogicCTPCO()
{
System.out.println("inside return  parameter sum");
}

}
class P26CTPCO
{
public static void main(String args[])
{
LogicCTPCO ob1=new LogicCTPCO();
LogicCTPCO ob2=new LogicCTPCO(5.6,67);
LogicCTPCO ob3=new LogicCTPCO(5.6f,6.6f,7.7f);
LogicCTPCO ob4=new LogicCTPCO(5,5.6);

}
}