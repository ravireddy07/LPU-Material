import java.lang.*;
import java.util.Scanner;
import java.util.*;


class One
{
  One()
{
 System.out.println("This is from Constructer of Class One");
}
  void Fun()
{
  System.out.println("This is from Fun of Class One");
}

}

class Two extends One
{
 Two()
{
 System.out.println("This is from Constructer of Class Two");
}
void Fun()
{
  System.out.println("This is from Fun of Class Two");
}

}

class Three 
{
static public void main(String args[])
{
 Two o1 = new Two();
 o1.Fun();
}
}