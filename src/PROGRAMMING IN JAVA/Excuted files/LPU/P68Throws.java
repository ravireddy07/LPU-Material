import java.io.IOException;
class Throws1
{
	void x() throws IOException
		{
			try{
			throw new ArithmeticException();
			}
			catch(ArithmeticException a)
			{
			System.out.println("ehfkwhfk");
				}
		}
	void y() throws IOException
		{
		x();
		}
	void z()throws IOException		
		{ 
			y();
		}
	}

class P68Throws
{
    public static void main(String r[])throws IOException
     {
	Throws1 obj=new Throws1();
	obj.z();
      }
}