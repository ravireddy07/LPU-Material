/*To implement non static nested class, (Inner class).Inside inner
 class all the static and non static data members of enclosing class 
can be modified and accessed. all the data members of non static 
nested class can have any access modifier except "static". Static is 
only allowed when data member is of type final.main method can not be
 defined inside non static nested class, as nonstatic class can not 
have static data members and member methods and main is static in java.*/

class OuterClass
{ 
    	static int a = 10;
    	int b= 20;
   	private static int c = 30;
	private int d = 40;
   
    class InnerClass     // inner class or non static nested class
    { 	
	static final int e=50;    //constant can't be modified
	 public int f=60;       //public ,can be modified
	//static int g=70;      //CTE:not possible because inner class associated with object how its data member can be associated with class
        
	void display()
        {  
	   a++;
	   b++;
	   c++;
	   d++;
	   f++;
   System.out.println("static a of outer class = " +a);
   System.out.println("non static b of outer class = " +b);
   System.out.println("private static c of outer class = " +c);
  System.out.println("private non static d of outer class = " +d);
  System.out.println("static final e of inner class = " +e);
  System.out.println("public f of inner class = " +f);
  //System.out.println("public f of inner class = " +g); //g is just sttaic
        }
    }
}
 
public class P42InnerClass
{
    public static void main(String[] args)
    {
        // accessing an inner class or non static nested class
        OuterClass outerObject = new OuterClass();
        OuterClass.InnerClass innerObject = outerObject.new InnerClass(); 
        innerObject.display();
         
    }
}