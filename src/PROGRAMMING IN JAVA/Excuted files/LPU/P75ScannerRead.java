/*program to read and write data to a file. as file class can not 
perform read and write to a file.It can be done in character oriented
 form and byte oriented form. first to discuss is character oriented 
for Char oriented read we have class: Scanner */

import java.util.Scanner;
import java.io.*;

	public class P75ScannerRead 
{
 		public static void main(String[] args) throws Exception  //exception declared so not handled
	{	
  		File f=new File("tx.txt");   //one way 
   		Scanner input = new Scanner(f);
		
		//Scanner input = new Scanner(new File("a.txt")); //second way
 		while(input.hasNext())
		 {
   			String s = input.nextLine();
			System.out.println(s);
		}
		input.close();    // to close the file
	}
 }
