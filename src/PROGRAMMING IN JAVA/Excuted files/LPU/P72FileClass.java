import java.util.*;
import java.io.*;
class P72FileClass 
{
	public static void main(String args[])
		{
try{
 		File f1 = new File("C:\\Users\\hp\\Desktop\\javaaa\\CSE310 programs\\K1653.txt");
		f1.createNewFile();
		File f2 = new File("b.txt");


		System.out.println("File Name: " + f1.getName());
		System.out.println("Path: " + f1.getPath());
		System.out.println("Is Absolute : " + f1.isAbsolute());
		System.out.println("Absolute Path: " + f1.getAbsolutePath());
		System.out.println("Parent: " + f1.getParent());
		System.out.println(f1.exists() ? "exists" : "does not exist");
		System.out.println("Is a Directory: "+ f1.isDirectory());
		System.out.println("Is a File: "+ f1.isFile());
		System.out.println("Can Write? "+ f1.canWrite());
		System.out.println("Can Read? "+ f1.canRead());


		long min = f1.lastModified();
            	Date dt = new Date(min);
            	System.out.print(" last modified at: "+dt);


		System.out.println("File size: " + f1.length() + " Bytes");
		//f1.renameTo(new File("pow.txt"));
		f1.renameTo(f2);
		//f1.delete();
	}catch(){}}
}
