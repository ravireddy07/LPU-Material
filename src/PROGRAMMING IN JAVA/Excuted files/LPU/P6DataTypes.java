/* there are 8 basic data types in java: byte(1),short(2),int(4),
long(8),char(2),float(4),double(8),boolean(1 bit)
Size of all data types is calculated using .SIZE property .In java no
garbage is assigned to data types instead some default value is assigned*/ 

class LogicDataTypeSize
{
	byte b;
short s;
int i;
long l;
char c;
float f;
double d;
boolean bo;
void sizeDataTypes()
{
//following code to print size:

System.out.println("byte size is"+Byte.SIZE);
System.out.println("short size is"+Short.SIZE);
System.out.println("int size is"+Integer.SIZE);
System.out.println("long size is"+Long.SIZE);
System.out.println("float size is"+Float.SIZE);
System.out.println("double size is"+Double.SIZE);
System.out.println("char size is"+Character.SIZE);

System.out.println("");  //to print empty line
System.out.println("");

//following code to print default values:

System.out.println("default value of byte is  "+b);
System.out.println("default value of short is  "+s);
System.out.println("default value of int is  "+i);
System.out.println("default value of long is "+l);
System.out.println("default value of float is "+f);
System.out.println("default value of double is "+d);
System.out.println("default value of char is "+c);
System.out.println("default value of boolean is "+bo);

}}

public class P6DataTypes
{
public static void main(String args[])
{
LogicDataTypeSize obj=new LogicDataTypeSize();
obj.sizeDataTypes();
}} 