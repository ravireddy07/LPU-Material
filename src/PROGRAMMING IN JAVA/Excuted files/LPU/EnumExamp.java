import java.lang.*;
import java.util.Scanner;

class EnumDemo
{  
public enum Season { SUMMER,  WINTER, SPRING} 
public static void main(String[] args) 
{  
for(Season s : Season.values())
 System.out.println(s);  
}
}