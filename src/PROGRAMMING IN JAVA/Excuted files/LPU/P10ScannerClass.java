/*Scanner class (inside util package)is used to take values from the keyboard.It has 6
 non staic methods (can be called only by making the object)
to take different types of values*/

import java.util.Scanner;
class LogicScanner
{
void scannerMethods()
{
Scanner obj=new Scanner(System.in);

System.out.println("enter the integer type attendance");
int p=obj.nextInt();          
System.out.println("you entered  "+p);

System.out.println("enter string type name");
String s=obj.next();               //no space allowed
System.out.println("name is  "+s);

System.out.println("enter string type two word name");
String s1=obj.next();        /combination of next() and nextLine() makes you take space separated string
String s2=obj.nextLine();

System.out.println("two word name is  "+s1+ "  " +s2);

/*System.out.println("enter float type exact marks");
float f=obj.nextFloat();
System.out.println("you entered  "+f);

System.out.println("enter short type roll number");
short s1=obj.nextShort();
System.out.println("you entered  "+s1);

System.out.println("enter byte type room no for lecture");
byte b=obj.nextByte();
System.out.println("you entered  "+b);

System.out.println("enter double type exact attendance");
double d=obj.nextDouble();
System.out.println("you entered  "+d);

System.out.println("enter long type registration");
long l=obj.nextLong();
System.out.println("you entered  "+l);


System.out.println("read line");
String s3=obj.nextLine();
System.out.print("you entered  "+s3);*/
}
}

public class P10ScannerClass
{
public static void main(String []a)
{ LogicScanner ob=new LogicScanner();
ob.scannerMethods();
}}