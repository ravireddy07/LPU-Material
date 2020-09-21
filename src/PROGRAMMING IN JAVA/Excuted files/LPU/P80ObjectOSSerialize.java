import java.io.*;
class ObjectOS implements Serializable 
	{
		String s;
		int i;
		double d;
	 ObjectOS(String s, int i, double d) 
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
	ObjectOS obj = new ObjectOS("Hello", -7, 2.7e10);
	//System.out.println("object serialization"+obj);
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
