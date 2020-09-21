import java.util.*;
import java.io.*;
public class P76FileOStream
 {
	public static void main(String[] args) throws Exception
{
	FileOutputStream fout= new FileOutputStream("zxc.txt");
		//String s="whatever  fkjw wgff kshf";
		
		Scanner sc=new Scanner(System.in);
		String s=sc.next();
		//s=s+sc.nextLine();		
	
		byte a[]=s.getBytes();
		fout.write(a);
		fout.close();
		System.out.println("saved to all named file");
    		
	}
}
