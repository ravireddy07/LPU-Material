import java.util.*;
import java.io.*;
public class P78FIS2WayToRead
 {
	public static void main(String[] args) throws Exception
{
		FileInputStream fin= new FileInputStream("all.txt");
		 byte answer[]=new byte[fin.available()];
     		 fin.read(answer,0,answer.length);  //overloaded read
 
                    for(int i=0;i<answer.length;i++)
                    {
                    System.out.print((char)answer[i]);
                    }
    		
	}
}
