class P62FinallyWithException
{  
  public static void main(String args[]){  

  
  try{  
   int data=25/0;  
   System.out.println(data);  
  }  
catch(ArithmeticException a)
{
System.out.println("rlkghsdhgsthgk");
}
finally{System.out.println("finally block is always executed");}  
  System.out.println("rest of the code...");  
  }
  
} 