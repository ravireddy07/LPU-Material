/*Constructor: used to initialise the object's instance variable with some 
value ,so that object will be made ready to use. It is of two typesw:
default(implicitly given if not made by coder) or parameterised*/

class LogicConstructor
{ int length;
  int breadth;
LogicConstructor(int l,int b)        //parameterised constructor
{ 
System.out.println("inside parameterised constructor");
length=l;
  breadth=b;
}

LogicConstructor()  //default constructor made by coder so ot be made implicitly
{ 
System.out.println("inside default constructor");
}
int areaOfRectangle1()   //no arg with return type method
{ 
return length*breadth;
}

void areaOfRectangle2()   //no arg no return type
{ 
System.out.println("the area of rectangle2 is   "+( length*breadth));
}
}

public class P16Constructor
{
public static void main(String ...a)
{
LogicConstructor rectangle1=new LogicConstructor(100,200); 

//rectangle1 instance variable will be initialised with 100 and 200

int resultRectangle1=rectangle1.areaOfRectangle1();
System.out.print("the area of rectangle1 is  "+resultRectangle1);

LogicConstructor rectangle2=new LogicConstructor(); 

//rectangle2 instance variable will be initialised with default 
//value because no value is passes in constructor to intialise the onstance variable

rectangle2.areaOfRectangle2();

}
}