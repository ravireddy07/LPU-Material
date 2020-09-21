import java.sql.*;  

class MysqlCon{
  
public static void main(String args[]){  

try{  
Class.forName("com.mysql.jdbc.Driver");  
Connection c=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/renu","root","root");  
Statement stmt=c.createStatement();  
ResultSet rs=stmt.executeQuery("select * from login");  
while(rs.next())  
System.out.println(rs.getString(1)+"  "+rs.getString(2));  
c.close();  
}catch(Exception e){ System.out.println(e);}  
}  
}  