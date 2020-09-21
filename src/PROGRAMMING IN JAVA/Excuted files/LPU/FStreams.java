import java.util.*;
import java.io.*;

public class Filer
{
   public static void main(String args[]) throws Exception
   {/*
	   Filer fout = new Filer("all.txt");
	   Scanner sc = new Scanner	(System.in);
	   String s = sc.next();	
	   s = s+sc.nextLine();
	   fout.write(s);
	   */
	   
	   int a=0;
	   Filer fout = new Filer("all1.txt");
	   while(a=fout.read()!= -1)
	   {
		   System.out.println((char)a);
	   }
	   
   }
}