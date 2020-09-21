import java.util.Scanner;
import java.io.*;

	public class P74ScannerRead 
{
 		public static void main(String[] args) throws Exception 
	{	
  		File f=new File("tx.txt");
   		Scanner input = new Scanner(f);
 		while(input.hasNext()) {
   			String s = input.nextLine();
  			System.out.println(s);
		}
		input.close();
	}
 }
