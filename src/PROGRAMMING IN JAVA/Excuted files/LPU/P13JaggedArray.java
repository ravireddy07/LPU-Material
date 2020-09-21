/*Ragged/jagged array:Write a Java Program ask to the user to enter row and column size 
of the array then ask to the user to enter the array elements, and 
the program will display the ragged array: works with nested loops.
it is used when we want to specify diff. number of columns in each 
row */

import java.util.Scanner;
class LogicJaggedArray
{
void  jaggedArray()
{
Scanner in = new Scanner(System.in);
System.out.println("Enter number of rows");
int row=in.nextInt();
int [][]arr=new int[row][];

 //enter the columns
for(int i = 0; i<row; i++)
{
System.out.println("Enter the nos of colums in " +i+ "row");
int col=in.nextInt();
arr[i]=new int[col];
}

System.out.println("Enter the values from user");
for(int i=0;i<arr.length;i++)
{
	for(int j=0;j<arr[i].length;j++)
	{
	arr[i][j]=in.nextInt();
	}
}
System.out.println("Display the value of array");
for(int i=0;i<arr.length;i++)
{
	for(int j=0;j<arr[i].length;j++)
	{
	System.out.print("  "+arr[i][j]);
	}
System.out.println();
}
   }
}

public class P13JaggedArray
{ 
public static void main(String ...a)
{ 
LogicJaggedArray obj=new LogicJaggedArray();
obj.jaggedArray();
}
}


