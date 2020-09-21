/*To implement Local Inner class.Inside inner class all the static 
and non static data members of outer class can be modified and accessed
.The variables of enclosing block (getValue method in this program ) 
can only accessed from the inner class but can not be modified anywhere
 because they can be either final or effectivelt final type.All the
 data members of non static nested class can have any access modifier
 except "static". Static is only allowed when data member is of type final.*/

class OuterClass
{
   static int a = 10;
   int b= 20;
   private static int c = 30;
   private int d = 40;
   void getValue()    //non static block cannot have static variables
     { 
      a++;b++;c++;d++;    //all DM of outer class can be modified here

      /*local methods can not have access specifiers*/
      int e=50;           //local variable (effectively final)
      final int f=60;     //local variable ,can't be modified(final)

	//Local inner Class inside method
      class Inner
        {
	static final int g=70;    //constant can't be modified
	public int h=80;          //public ,can be modified
	//static int i=90;          //static without final not allowed as data member of inner class
        void display()
         {
	  a++;b++;c++;d++; //all DM of outer class can be modified here
	  h++;   //all non final type DM of inner class can be modified
	  System.out.println("static a of outer class = " +a);
          System.out.println("non static b of outer class = " +b);
          System.out.println("private static c of outer class = " +c);
          System.out.println("private non static d of outer class = " +d);
          System.out.println("default local variable e (EFFECTIVELY FIANL) of enclosing method = " +e);
          System.out.println("final local variable f (FINAL)of enclosing method= " +f);
          System.out.println("static final g (STATIC FIANL)of inner class = " +g);
	  System.out.println("public h of inner class = " +h);
          //System.out.println("public f of inner class = " +i); 
          }
        }
		Inner obj = new Inner();
        	obj.display();
     }
}

class P43LocalInner
{
    public static void main(String[] args)
    {
        OuterClass local = new OuterClass();
        local.getValue();
    }
}