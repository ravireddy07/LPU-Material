import java.io.*;
import java.io.File.*;
import java.util.*;

class fileclass
{
	public static void main(String args[])throws Exception
	{
		
		//try{
			
		//File f1 = new File("C:\\Users\\Ravi Reddy Gojur\\Downloads\\operation.txt");
		File f1 = new File("abc.txt");
		f1.createNewFile();
		
		System.out.println("File name is: "+f1.getName());
		System.out.println("Path: "+f1.getPath());
		System.out.println("Is Absolute: "+f1.isAbsolute());
		System.out.println("Is Absolute Path is: "+f1.getAbsolutePath());
		System.out.println("Is This is File or Not: "+f1.isFile());
		System.out.println("Parent is: "+f1.getParent());
		//System.out.println("Childrens is: "+f1.getChildren());
		System.out.println("Can we Write in this or not: "+f1.canWrite());
		System.out.println("Can we Read this file or not"+f1.canRead());
		System.out.println("the Directory is: "+f1.isDirectory());
		System.out.println("is this File Exists or not: "+f1.exists());
		System.out.println("The Size of the File is: "+f1.length());
		System.out.println("canonical file:" + f1.getCanonicalFile());
		System.out.println("canonical path:" + f1.getCanonicalPath());
		
		long min = f1.lastModified();
		Date dt = new Date(min);
		System.out.println("Last Modified is: "+dt);
		
		
	}
}