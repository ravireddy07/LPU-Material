import java.util.*;

class TwoGen <T,V>
{
   T ob1;
   V ob2;
   TwoGen(T o1, V o2)
   {
	   ob1 = o1;
	   ob2 = o2;
   }
   void ShowTypes()
   {
	 System.out.println("Type of T is: "+ob1.getClass().getName());
	 System.out.println("Type of V is: "+ob2.getClass().getName());
   }
   T getob1()
   {
	   return ob1;
   }
   V getob2()
   {
	   return ob2;
   }
}