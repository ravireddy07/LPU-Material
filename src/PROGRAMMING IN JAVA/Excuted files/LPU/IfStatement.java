import java.lang.*;
import java.util.*;


class AA
{
public static void main(String args[])
{

System.out.print("Enter Your Marks in Subject 1 \n");
Scanner a = new Scanner(System.in);
float s1 = a.nextFloat();

System.out.print("Enter Your Marks in Subject 2 \n");
//Scanner b = new Scanner(System.in);
float s2 = a.nextFloat();

System.out.print("Enter Your Marks in Subject 3 \n");
//Scanner c = new Scanner(System.in);
float s3 = a.nextFloat();

if (s1 > s2){
  if (s1 > s3)
    System.out.print("Subject 1 is Greater Among Three \n");
 }

 else if (s2 > s1){
  if (s2 > s3)
    System.out.print("\n Subject 2 is Greater Among Three \n");
}
 else
    System.out.print("\n Subject 3 is Greater Among Three ");

}

}