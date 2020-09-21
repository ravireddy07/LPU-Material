import java.lang.*;
import java.util.*;

class A
{
public static void main(String args[])
{
    System.out.print("Enter any Number to Start\n");
    Scanner aa = new Scanner(System.in);
    int a=aa.nextInt();
    
    System.out.print("Enter your Name \n");
    Scanner name1 = new Scanner(System.in);
    String name = name1.next();

    System.out.print("Enter your Branch \n");
    Scanner branch1 = new Scanner(System.in);
    String branch = branch1.next();

    System.out.print("Enter your Section \n");
    Scanner section1 = new Scanner(System.in);
    float sec = section1.nextFloat();

    System.out.print("Enter your total_marks out of 600 \n");
    Scanner total_marks1 = new Scanner(System.in);
    float total_marks = total_marks1.nextFloat();


      if(total_marks > 570)
        {
           System.out.print("Grade is A+ \n");
         }
       else if(total_marks > 520 && total_marks < 569)
        {
           System.out.print("Grade is A \n");
         }
       else if(total_marks > 470 && total_marks < 519)
        {
           System.out.print("Grade is B+ \n");
         }
       else if(total_marks > 400 && total_marks < 469)
        {
           System.out.print("Grade is B \n");
         }
       else if(total_marks > 320 && total_marks < 399)
        {
           System.out.print("Grade is C \n");
         }
       else if(total_marks > 250 && total_marks < 319)
        {
           System.out.print("Grade is D \n");
         }
       else if(total_marks < 249)
        {
           System.out.println("Grade is E, You Failed...!!!!");
         }
       else
        {
           System.out.println("Your Marks is Invalid");
         }


Float cgpa = (total_marks/600)*10;

System.out.println("Your CGPA is : "+cgpa);
}


}