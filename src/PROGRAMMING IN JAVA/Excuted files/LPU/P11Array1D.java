import java.util.*;

class LogicArray
{ 	
Scanner sc=new Scanner(System.in);   //as data member

void array1()
{
System.out.println("in array 1 hard coded array");
int b[]={1,2,3,4,5};
System.out.println("the values are  "+b[0]);
System.out.println("the values are  "+b[1]);
System.out.println("the values are  "+b[2]);
System.out.println("the values are  "+b[3]);
System.out.println("the values are  "+b[4]);
}
	
void array2()
{
System.out.println("in array 2 assign value to each index");
int a[];
a=new int[5];    //OR int n=5; int a[]=new int[n];
a[0]=1;
a[1]=2;
a[2]=3;
a[3]=4;
a[4]=5;
System.out.println("the values are  "+a[0]);
System.out.println("the values are  "+a[1]);
System.out.println("the values are  "+a[2]);
System.out.println("the values are  "+a[3]);
System.out.println("the values are  "+a[4]);
}

	
void array3()
{ 
System.out.println("in array 3 dynamic Ip array");
System.out.println("enter the size ");
int size=5;
int []c=new int[size];
System.out.println("enter 5 consecutive values for array");
 c[0]=sc.nextInt();
 c[1]=sc.nextInt();
c[2]=sc.nextInt();
c[3]=sc.nextInt();
c[4]=sc.nextInt();
System.out.println("the values are  "+c[0]);
System.out.println("the values are  "+c[1]);
System.out.println("the values are  "+c[2]);
System.out.println("the values are  "+c[3]);
System.out.println("the values are  "+c[4]);
}

	
void array4()
{
System.out.println("in array 4 using for loop");
System.out.println("enter the size");
int size=sc.nextInt();
int d[]=new int[size];
System.out.println("enter "+size+"  consecutive values for array");
for(int i=0;i<size;i++)  //body is optional
{
d[i]=sc.nextInt();
}
for(int i=0;i<d.length;i++)
System.out.println("the values are   "+d[i]);
}	


void array5()
{
System.out.println("in array 5 using .length property ad enhanced for loop");
System.out.println("enter the size");
int size=sc.nextInt();
int e[]=new int[size];
System.out.println("enter "+size+"  consecutive values for array");
for(int i=0;i<e.length;i++)  //body is optional
{
e[i]=sc.nextInt();
}
for(int i:e)
System.out.println("the values are   "+i);
}	


void array6(float f[])
{
System.out.println("in array 6 array as an argument");
System.out.println("in array 6 method when methos called from main by passing array as am arg");
  for (int i = 0; i < f.length; i++) 
System.out.println(f[i]);
}		
			
float[] array7(float g[])
{
System.out.println("in array 7 array as return type");
System.out.println("in array 7 method when methos called from main by passing array as am arg");
for (int i = 0; i < g.length; i++) 
System.out.println(g[i]);
return g;
}


int[] array8(float h[])
{System.out.println("in array 8 take float type array values but return int type");
int copy[]=new int[h.length];

System.out.println("the values passed as an argument array are");
for (float i:h) 
System.out.println(i);

for (int i=0;i<h.length;i++)
copy[i]=(int)h[i];
return copy;
}	
} 

public class P11Array1D
{
public static void main(String ...args)
{
float[] list = {3.0f, 1.3f, 2.4f, 6.0f, 4.5f, 2.0f};
LogicArray obj=new LogicArray();
System.out.println("in main method  ");
obj.array1();
obj.array2();
obj.array3();
obj.array4();
obj.array5();
obj.array6(list);
float z[]=obj.array7(list);
System.out.println("when method is returned back after array7([]) call");
for (float i:z) 
 System.out.println(i + " ");


int x[]=obj.array8(list);
System.out.println("when method is returned back after arra8([]) call");
for (int i:x) 
 System.out.println(i + " ");



		   	} }