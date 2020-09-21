import java.io.*;
public class P75PrintWriter {
	public static void main(String[] args) throws Exception {
		
		PrintWriter output = new PrintWriter("tx.txt");
		output.print("Java class ");
    		output.println(40);
    		output.print("LPU ");
    		output.println(85.5);
    		output.print('a');
		output.close();
    		
	}
}
