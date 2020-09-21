/*program to assign values of one data type to another data type, it 
is of three types: Type Promotion, Type casting(narrowing),Type 
conversion(Widening)*/

class LogicDataTypesAssignment
{byte b=1;
short s=2;
int i=3;
long l=4;
char c='a';
float f=1.2f;  //if 'f' not mentioned by default promoted to double
double d=2.3;
boolean bo=false;

void dataTypeAssignment()
{      
/*type casting:when large sized data to be assigned to small sized 
data type*/

i=(int) l;   //(we mention the type cast type in round parenthesis
System.out.println("type casting long to int is  "+i);

/*type conversion:when small sized data we want to assign to large 
sized data type.It is done implicitly*/

l=i;    //long(8 bytes) holding int(4 bytes) done implicitly
System.out.println("type conversion int to long  "+l);

/*Type Promotion:byte ,short,char,int implicitly promoted to long.
float implicitly promoted to double.*/

long ll=99999999999L;   //mentioning 'L' means it is actually long type
 		  //value, it is not any promoted value
int ii=(int)ll;
System.out.println("type promotion long to int  "+ii);

d=55.69856375475634756568d;        //mentioning 'F' means it is actually long type
 		  //value, it is not any promoted value
f= (float)d;
System.out.println("type promotion of double to float  "+f);

//EXAMPLE
byte u=20;
byte e=90;  
/*byte c=u*e will give CTE as lossy conversion because result would 
be outside the range of byte so can be either stored in high ranged 
data type or type cast the result in byte*/

byte c=(byte)(u*e);    //or    int c=u*e;
System.out.println("type conversion int to long  "+c);
}}

public class P7DataTypesAssignment
{
public static void main(String args[])
{
LogicDataTypesAssignment obj=new LogicDataTypesAssignment();
obj.dataTypeAssignment();
}}