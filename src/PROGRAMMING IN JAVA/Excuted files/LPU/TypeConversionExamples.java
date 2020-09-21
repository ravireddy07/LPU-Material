class Datatypes
{
public static void main(String args[])
{

long l=90;               //Type Casting Narrowing
int a=(int)l;
System.out.print("   "+a+"\n");



int aa2=143;             //Type Casting Narrowing
byte b2=(byte)aa2;
System.out.print("   "+b2+"\n");


byte b1=123;             //type Conversion with Widening
int aa1=(int)b1;
System.out.print("   "+aa1+"\n");


int a1=90;               //type Conversion with Widening
long l1=a1;
System.out.print("   "+l1+"\n");


long ll=9036363636363L;  //Type Promotion with type castig
int aa=(int)ll;
System.out.print("   "+aa+"\n");


double l2=978456122278.123455464;    //Truncate
int a2=(int)l2;
System.out.print("   "+a2+"\n");

}
}