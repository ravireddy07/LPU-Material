import java.util.*;

class FirstAbr
{
  int a,b;

  void Funct(){}
}

abstract class SecondAbr extends FirstAbr
{
  abstract void Funct();
}

class ThirdAbr extends SecondAbr
{
   void Funct()
{
  System.out.print("Enter Your Name: ");
  Scanner nam = new Scanner(System.in);
  String n1  = nam.nextLine();
}
}

/*
class Fourth extends ThirdAbr
{
   void Funct()
{
  System.out.print("Here, We are Printing the Name: ");
}

}
*/

class FinalAbr
{
  public static void main(String args[])
{
  // FourthAbr t1 = new FourthAbr();

     ThirdAbr t1= new ThirdAbr();
      t1.Funct();

}
}