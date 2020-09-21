import java.util.IOException;

class Testthrows1
{
   void m()throws IOException
   {
      throw new IOException("Device error");
	  System.out.println("Normal Flow....!!");	 
   }
   void n()throws IOException
   {
   m();
   }
   void p()
   {
       try
	   {
	      n();
	   }
	   catch(Exception e)
	   {
		   System.out.println("Exception Handled");
	   }
   }

   public static void main(String args[])
   {
	 Testthrows1 obj = new Testthrows1();
     obj.p();
     System.out.println("Normal Flow....!!");	 
   }
   
}

