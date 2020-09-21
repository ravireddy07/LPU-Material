class One
{
  public static void main(String args[])
  {
	  //First Type of using try & Catch
     try{
	 int data1=10,data2=0,data3=5;
	 float data=data1/data2;
	 System.out.println(data);
	 }
	 catch(NullPointerException e)
	 {
	   System.out.println(e);
	 }
	 finally
	 {
	  System.out.println("Finally block is always Exexcuted");
	 }
	  System.out.println("Rest of the code goes here.....!!");
	  
	  
	  //Second Type of using try & Catch
	  try{
	 int data1=10,data2=0,data3=5;
	 float data=data1/data2;
	 System.out.println(data);
	 }
	 catch(NullPointerException e)
	 {
	   System.out.println(e);
	 }
	  
	  //third Type of using try & Catch
	 try{
	 int data1=10,data2=0,data3=5;
	 float data=data1/data2;
	 System.out.println(data);
	 }
	 finally
	 {
	  System.out.println("Finally block is always Exexcuted");
	 }

  }
}