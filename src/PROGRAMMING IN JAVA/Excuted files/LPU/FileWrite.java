import java.io.*;
import java.util.*;

class Writer
{
public static void main(String args[])throws Exception
{

File f = new File("writer.txt");
//File f = new File("writer.txt");
f.createNewFile();
PrintWriter output = new PrintWriter(f);
output.println("Section: 1651");
output.println("Roll.No-54");
output.println("Name: Ravi Reddy");
output.println("CSE310-Java Programming");
//output.println('a');
output.close();


Scanner input = new Scanner(new java.io.File("writer.txt"));
while(input.hasNext())
{
	String s = input.nextLine();
	System.out.println(s);
}
input.close();
}
}