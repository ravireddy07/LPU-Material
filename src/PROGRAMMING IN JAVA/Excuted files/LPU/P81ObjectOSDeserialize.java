import java.io.*;
class P81ObjectOSDeserialize
{
	public static void main(String args[])
	 {
		try {
	FileInputStream fis = new FileInputStream("serial.txt");
	ObjectInputStream ois = new ObjectInputStream(fis);
	ObjectOS objd = (ObjectOS)ois.readObject();
	ois.close();
	System.out.println("object deserialise: " + objd);
 		 }
		catch(Exception e) {
	System.out.println("Exception during deserialization: " + e);
	
   }
  }
}

