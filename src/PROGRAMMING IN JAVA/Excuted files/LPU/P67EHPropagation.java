class P67EHPropagation
{
   void x()
   {
	throw new ArithmeticException();
   }
   void y()
     {
	x();
     }
   void z()
     {
	try
		{ 
		y();
		}
	catch(NumberFormatException a)
		{
		System.out.println("khfkjshf");
		}
      }
  public static void main(String r[])
   {
	try
		{
		X obj=new X();
		obj.z();
	}
	catch(Exception a)
		{
		System.out.println("sfns,hfksj");
		}
    }
}