import java.io.*;
import java.io.Serializable;
import java.util.*;

class ObjectOS implements Serializable
{
    String s;
	int i;
	double d;
	ObjectOS(String s,int i,double d)
	{
	    this.s = s;
		this.i = i;
		this.d = d;
	}
	public String toString()
	{
		return "s="+s+"; i="+i+"; d="+d;
	}
}

class ObjectOSSerialize
{
	public static void main(String args[])throws IOException
	{
		try
		{
			ObjectOS obj = new ObjectOS("Hello", -7, 2.7e10);
			System.out.println("onj1: "+obj);
			
			FileOutputStream fos = new FileOutputStream("Serial.txt");
			ObjectOutputStream oos = new ObjectOutputStream(fos);
			//ObjectOutputFileStream oos = new ObjectOutputFileStream(fos);
			
			oos.writeObject(obj);
			oos.flush();
			oos.close();
		}
		catch(IOException e)
		{
			System.out.println("Exception During Serialization"+e);
		}
	}
}