import java.util.*;
class P71Assertion
{
public static void main(String ar[])
{
Scanner sc=new Scanner (System.in);
System.out.println("enter age");
int age=sc.nextInt();
assert age>18:"you are not allowed to vote";
}}