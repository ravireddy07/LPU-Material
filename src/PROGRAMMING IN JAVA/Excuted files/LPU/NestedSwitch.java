import java.lang.*;
import java.util.Scanner;

class nestedswitch
{

public static void main(String args[])
{

Scanner branch1 = new Scanner(System.in);
System.out.print("Select Your Branch for Core Subjects \n");
System.out.print("1.CSE\n2.ECE\n3.MEC\n");
int branch = branch1.nextInt(); 
        
int year = 2;
        
        switch( year )
        {
            case 1 :
                System.out.print("English, Maths, Drawing");
                break;
            case 2 :
                switch( branch ) 
                {
                    case 1 :
                        System.out.print("Data structures, Java, Computer Organization");
                        break;
                    case 2 :
                        System.out.print("Micro processors, Logic switching theory");
                        break;
                    case 3 :
                        System.out.print("Drawing, Manufacturing Machines");
                        break;
                }
                break;
            case 3 :
                switch( branch )
                {
                    case 1 :
                        System.out.print("Operating System, RDBMS");
                        break;
                    case 2 :
                        System.out.print("Fundamentals of Logic Design, Microelectronics");
                        break;
                    case 3 :
                        System.out.print("Internal Combustion Engines, Mechanical Vibration");
                        break;
                }
                break;
        }
    

}
}