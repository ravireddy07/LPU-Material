import java.sql.*;  
import java.util.*;
class Authorization{
public static void main(String args[]){  
Scanner sc=new Scanner(System.in);
String u=sc.nextLine();
String p=sc.nextLine();
try{  
Class.forName("com.mysql.jdbc.Driver");  
Connection c=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/renu","root","root");  
Statement stmt=c.createStatement();  
ResultSet rs=stmt.executeQuery("select * from login where username='"+u+"' and password='"+p+"'");  
if(rs.next())  
System.out.println("You are authorized user");
else
System.out.println("You are not authorized user");  
c.close();  
}catch(Exception e){ System.out.println(e);}  
}  
}  