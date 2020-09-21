class LogicStaticNonstatic
{
int a=9;       //non static data member OR instance variable
static int b=10;   //static data member
static void staticTypeMethod()
{
//System.out.println("the non static a cant be accessed in static context so CTE  "+a);
System.out.println("the static b can be accessed in static context  "+b);
}
void nonStaticTypeMethod()
{
System.out.println("the non static a can be accessed in nonstatic context  "+a);
System.out.println("the static b can be accessed in nonstatic context  "+b);
}

}

public class P14StaticNonstatic
{
public static void main(String a[])
{
LogicStaticNonstatic obj=new LogicStaticNonstatic();
obj.staticTypeMethod();   //it is right

LogicStaticNonstatic.staticTypeMethod();   //it is also right

LogicStaticNonstatic obj1=new LogicStaticNonstatic();
obj1.nonStaticTypeMethod();      //it is right

//LogicStaticNonstatic.nonStaticTypeMethod();   =>false nonstatic cant 
//be accessed outside class directly with class name. Object creation is compulsory
}
}


