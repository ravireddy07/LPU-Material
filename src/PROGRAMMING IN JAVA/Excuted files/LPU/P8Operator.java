class LogicOperator
{
void arithmatic()  //+,-,*,%,/,+=,-=,*=,%=,/=,
{  

System.out.println("********inside Arithmatic******** ");
int a=10;
int b=20;
int add=a+b;
System.out.println("the sum is  "+add);

int sub=a-b;
System.out.println("the sub is  "+sub);

float div=a/b;
System.out.println("the div is  "+div);

int mul=a*b;
System.out.println("the mul is  "+mul);

int mod=a%b;   //modulus will return remainder as the ans
System.out.println("the mod is  "+mod);

System.out.println("the sum is  "+(a+=b));   //Compound assignment
System.out.println("the sub is  "+(a-=b));
System.out.println("the mul is  "+(a*=b));
System.out.println("the div is  "+(a/=b));
System.out.println("the mod is  "+(a%=b));
}
void relational()   //<,>,<=,>=,==,!,!=
{
System.out.println("********inside relational******** ");
int a=2;
int b=4;
System.out.println("the answer < is   "+(a<b));
System.out.println("the answer > is  "+(a>b));
System.out.println("the answer <= is  "+(a<=b));
System.out.println("the answer >= is  "+(a>=b));
System.out.println("the answer == is  "+(a==b));
System.out.println("the answer != is  "+(a!=b));
System.out.println("the answer ! is  "+!(a<b));
}  
 
//bitwise operators are=> ~,|,&,^,|=,&=,^=,<<,>>,>>>,<<=,>>=,>>>=
void bitwise() 
{ System.out.println("********bitwise logical******** ");

int bitnumber=5;    //~
System.out.println("the decimal value is "+bitnumber);      //5
System.out.println("the binary value is  "+Integer.toBinaryString(bitnumber));    //101
System.out.println("the negative value is  "+Integer.toBinaryString(~bitnumber)); //010
System.out.println("the negative value is  "+Integer.toBinaryString(-bitnumber)); //011

int bor1=9;            // 1001  |
int bor2=10;            //1010
int borresult=bor1|bor2;
System.out.println("the decimal or of bor1 and bor2 is  "+borresult);
System.out.println("the binary or of bor1 and bor2 is  "+Integer.toBinaryString(borresult));

int band1=9;   // 1001    &
int band2=10; //  1010
int bandresult=band1 & band2;
System.out.println("the decimal and of band1 and band2 is  "+bandresult);
System.out.println("the binary and of band1 and band2 is  "+Integer.toBinaryString(bandresult));

int bxor1 = 9, bxor2 = 10;    //^
int bxorresult = bxor1^bxor2;
System.out.println("the decimal and of bxor1 and bxor2 is  "+bxorresult); 
System.out.println("the binary and of bxor1 and bxor2 is  "+Integer.toBinaryString(bxorresult));


//left shift  <<

int ls = 212;  //11010100//signed left when shifting left multiply
System.out.println("the binary of212 is "+Integer.toBinaryString(ls));

System.out.print(ls << 1);    //212*2
System.out.println(Integer.toBinaryString(ls<<1));

System.out.print(ls<< 0);          //212*1
System.out.println(Integer.toBinaryString(ls<<0));

System.out.print(ls << 4);     //212*16
System.out.println(Integer.toBinaryString(ls<<4));

//right shift   >>

int rs = 212;  //11010100 signed right shift  when shifting divide
    	System.out.println(rs >> 1);
    	System.out.println(rs >> 0);
    	System.out.println(rs >> 8);

//unsigned or right shift zero filled   >>>
int urs1 = 5, urs2 = -5; 
    	System.out.println(urs1 >> 1);   // Signed right shift 
    	System.out.println(urs1 >>> 1);  // Unsigned right shift
    	System.out.println(urs2 >> 1);    // Signed right shift 
    	System.out.println(urs2 >>> 1);   // Unsigned right shift
   

//EXAMPLES
int rs1 = -4;
	System.out.println(Integer.toBinaryString(rs1));   
        System.out.println(Integer.toBinaryString(rs1 >> 2));   
  
int ls1 = 4;
	System.out.println(Integer.toBinaryString(ls1));   
       System.out.println(Integer.toBinaryString(ls1 << 2)); 


 int urs3 = -1;  
System.out.println(Integer.toBinaryString(urs3>>>29));  // The value of 'x>>>29' is 00...0111
System.out.println(Integer.toBinaryString(urs3>>>30));  // The value of 'x>>>30' is 00...0011 
System.out.println(Integer.toBinaryString(urs3>>>31));  // The value of 'x>>>31' is 00...0001 
}

// Boolean Logical:|,&,^,||(shortcrcuit or),&&(shortcrcuit and),!,!=,==,?
void booleanLogical()   //works on true and false
{
System.out.println("********Boolean Logical******** ");

int sc1=7;
int sc2=8;
if((sc1<5) && (sc2 >6))//shortcircuit and  if first false, whole condition considered false
System.out.println("yes");

if((sc1>5) || (sc2 <6))  //shortcircuit or: if first condition true, whole condition consisdered true
System.out.println("yes");

int p=90;         //ternary
int r=p!=90?p=p+8:p-1; //it behaves as condtion true then?run this (else):this before colon
System.out.println("       "+r);
}

static void instanceOfOPerator1()
{
System.out.println("********instanceOf operator******** ");

LogicOperator o=new LogicOperator();//instanceof tells whether object belong tothe declared class or not ?
if(o instanceof LogicOperator)
System.out.println("yes it is an instance");
}

void unary() //++,--,!,+,-
{ 
System.out.println("********inside unary******** ");

int a=9;
int b=a++;
int c=++a;
int d=a++ + ++b + b++ + ++c + c++;
System.out.println("the value of b is "+b);
System.out.println("the value of c is "+c);
System.out.println("the value of d is "+d);


}
void assignment()
{ 
System.out.println("********inside assignment******** ");
int a=9;
int b,c,d;
 a=b=c=d=99;   //works from right(value) to left (Variable)
System.out.println("the value of a,b,c,d are: "+a+"  "+b+"  "+c+"  "+d );

}
}

public class P8Operator
{
public static void main(String args[])
{ 
LogicOperator obj=new LogicOperator();
obj.relational();
obj.arithmatic();
obj.bitwise();
obj.booleanLogical();
obj.instanceOfOPerator1();
obj.assignment();
obj.unary();
}
}