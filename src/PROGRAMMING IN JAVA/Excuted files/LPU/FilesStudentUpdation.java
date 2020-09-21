	import java.util.*;
import java.io.*;

class program2
{
	void entry()throws Exception
	{
		File recordTem= new File("C:\\Users\\Ravi Reddy Gojur\\Downloads\\Java\\NewDataBase.txt");
		recordTem.createNewFile();
		
		Scanner name1 = new Scanner(System.in);
		Scanner term1 = new Scanner(System.in);
		Scanner cgpa1 = new Scanner(System.in);
		Scanner sec = new Scanner(System.in);
		
		String name = name1.nextLine();
		String term  = term1.nextLine();
		float cgpa  = cgpa1.nextFloat();
		String section  = sec.nextLine();
		
		PrintWriter input= new PrintWriter(recordTem);
		
		input.println("Name: "+name);
        input.println("Term: "+term);
		input.println("CGPA: "+cgpa);
    	input.println("Section: "+section);
		input.close();
	}
}
class mainprogram2
{
	public static void main(String args[])throws Exception
	{
		File recordPer = new File("C:\\Users\\Ravi Reddy Gojur\\Downloads\\Java\\OldDataBase.txt");
		recordPer.createNewFile();
		File recordTem= new File("C:\\Users\\Ravi Reddy Gojur\\Downloads\\Java\\NewDataBase.txt");
		recordTem.createNewFile();
		
		program2 s1 = new program2();
		s1.entry();
		
		PrintWriter input= new PrintWriter(recordPer);
		Scanner output= new Scanner(recordTem);
 		while(output.hasNext()) 
		{
   			String s = output.nextLine();
  			System.out.println(s);
			input.println(s);   //input.write(s);
		}
		output.close();
	    input.close();
		
		s1.entry();
	}
}