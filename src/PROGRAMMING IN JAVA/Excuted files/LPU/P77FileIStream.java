import java.util.*;
import java.io.*;
public class P77FileIStream
 {
	public static void main(String[] args) throws Exception
	{		 int answer=0;
		FileInputStream fin= new FileInputStream("zxc.txt");
			while((answer=fin.read())!=-1)
			{
                    		System.out.print((char)answer);	
 			}
		System.out.println("saved to all named file");
    		
	}
}
