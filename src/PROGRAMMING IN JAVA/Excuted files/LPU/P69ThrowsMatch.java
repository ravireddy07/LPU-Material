import java.io.IOException;  
class P69ThrowsMatch
{  
  void m()throws IOException
	{  
    	throw new IOException("device error");//checked exception  
  	}  

  void n()throws IOException
	{  
   	 m();  
  	} 
 
  void p(){  
   try
	{  
    	n();  
   	}
	catch(Exception e){System.out.println("exception handled");}  
  } 
 
  public static void main(String args[]){  
   P69ThrowsMatch obj=new P69ThrowsMatch();  
   obj.p();  
   System.out.println("normal flow...");  
  }  
}  
