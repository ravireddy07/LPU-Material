/*Nested classes means class within another class.It is of two types
(1)Static Nested class (2) Inner Class(Non-Static nested class).
 This program implememts concept of Static Nested class.Inside nested
 class all the static data members of enclosing class can be modified
 and accessed directly. All the non static data members can be 
modified or accessed by making the object of enclosing class. all the
 data members of static nested class can have any access modifier.
main method can be defined inside static nested class, but then at run 
time we will write java outerclassname$staticnestedclassname .*/

class OuterClass         //outer class
{ 
    	static int a = 10;
    	int b= 20;
   	private static int c = 30;
	private int d = 40;
     
    static class StaticNested      // static nested class
    {     static final int e=50;    //constant can't be modified
	  public int f=60;  
	  static int g=70; 
      
        void display()
        { 
         	OuterClass obj=new OuterClass();
		a++;
		obj.b++; //non static with object
		c++;
		obj.d++; //non static with object

		f++;   //public data member of inner class , non final ,can be modified
		g++;   //static data member of inner class , non final ,can be modified
  System.out.println("static a of outer class = " +a);
  System.out.println("non static b of outer class= " +obj.b);
  System.out.println("private static c of outer class = " +c);
  System.out.println("private non static d of outer class = " +obj.d);
  System.out.println("static final e data member of inner class = " +e);
  System.out.println("public f data member of inner class = " +f);   
  System.out.println("static f data member of inner class  = " +g); 
         
        }
    }
}
 
public class P41StaticNestedClass
{
    public static void main(String[] args)
    {
        // accessing a static nested class
        OuterClass.StaticNested obj = new OuterClass.StaticNested();
         obj.display();
         
    }
}
