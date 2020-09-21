import java.io.*;
class ObjectOSSerialize implements Serializable 
	{
		String s;
		int i;
		double d;
	 ObjectOSSerialize(String s, int i, double d) 
		{
		this.s = s;
		this.i = i;
		this.d = d;
	     }
	public String toString() 
		{
		     return "s=" + s + "; i=" + i + "; d=" + d;
		}
     }


class P80ObjectOSSerialize
{
	public static void main(String args[])
	 {
		try 
		   {
ObjectOSSerialize obj = new ObjectOSSerialize("Hello", -7, 2.7e10);
	System.out.println("obj1: " + obj);
	FileOutputStream fos = new FileOutputStream("serial.txt");
	ObjectOutputStream oos = new ObjectOutputStream(fos);
	oos.writeObject(obj);
	oos.close();
		      }
		catch(IOException e) 
		   {
	System.out.println("Exception during serialization: " + e);
		      }
}
}
