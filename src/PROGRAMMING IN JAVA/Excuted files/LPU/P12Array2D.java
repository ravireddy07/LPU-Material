/*Write a Java Program ask to the user to enter row and column size 
of the array then ask to the user to enter the array elements, and 
the program will display the two dimensional array: works with nested
 loops*/

import java.util.Scanner;

class LogicArray2D
{
void  array2d1way()
{     
System.out.println("********inside dynamic 2D array*******");
 	int row, col, i, j;       
       Scanner scan = new Scanner(System.in);	   
       System.out.print("Enter Number of Row for Array : ");
       row = scan.nextInt();
       System.out.print("Enter Number of Column for Array : ");
       col = scan.nextInt();
	int arr[][] = new int[row][col];   //2-d array
       System.out.print("Enter " +(row*col)+ " Array Elements : ");
       for(i=0; i<row; i++){      //body is optional for both for loops
           for(j=0; j<col; j++){
               arr[i][j] = scan.nextInt();
           }
       }	   
       System.out.print("The Array is :\n");
       for(i=0; i<row; i++){
           for(j=0; j<col; j++){
               System.out.print(arr[i][j]+ "  ");
           }
           System.out.println();
       }
}
void array2dSecondWay()
{
System.out.println("********inside static 2D array*******");
 
int [][] d={{3,4,5},
	   {6,8,90}};// declaration, creation and initialization in one step
System.out.println("Entered values in array:");
		for(int i=0; i<2; i++){
			for(int j=0; j<3; j++){
				System.out.print(d[i][j]+"\t");
			}
			System.out.println();
		}
}
}

public class P12Array2D
{ 
public static void main(String ...a)
{ 
LogicArray2D obj=new LogicArray2D();
obj.array2d1way();
obj.array2dSecondWay();

}
}


