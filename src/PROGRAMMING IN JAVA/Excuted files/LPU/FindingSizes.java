import java.lang.*;

class A
{
static public void main(String ar[])
{
int var1;
float var2;
char var3;
byte var4;
double var5;
long var6;

var1=Integer.SIZE;
var2=Float.SIZE;
var3=Character.SIZE;
var4=Byte.SIZE;
var5=Double.SIZE;
var6=Long.SIZE;

System.out.print("Size of Integer is: "+var1 +"\n");
System.out.print("Size of Float   is: "+var2 +"\n");
System.out.print("Size of Char    is: "+var3 +"\n");
System.out.print("Size of Byte    is: "+var4 +"\n");
System.out.print("Size of Double  is: "+var5 +"\n");
System.out.print("Size of Long    is: "+var6 +"\n");
}
}