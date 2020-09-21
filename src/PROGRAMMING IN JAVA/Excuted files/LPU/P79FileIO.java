import java.io.*;

public class P79FileIO
 {
  public static void main(String[] args) throws Exception 
	{
		FileInputStream fin = new FileInputStream("all.txt");
    		OutputStream fout = new FileOutputStream("all.txt",true);
    		int c=0;
   		 //while ((c = fin.read()) != -1) 
			//{
      			//System.out.print((char) c);
      			fout.write(65);
    			//}
    		fin.close();
    		fout.close();
	}
}