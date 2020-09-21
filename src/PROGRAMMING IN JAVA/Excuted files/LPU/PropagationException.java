class propagation1
{
 void f1(string name)
 {
	 System.out.println("Hii...Your are at Wrong Place..!!");
	 int a = name;
	 System.out.println("a="+a);
 }
 void f2(string name)
 {
	  System.out.println("Hii...Your are at Wrong Place..!!");
	  f1(name);
 }
  void f3(string name)
 {
	 System.out.println("Hii...Your are at Wrong Place..!!");
	 f2(name);
 }
  void f4(string name)
 {
	 System.out.println("Hii...Your are at Wrong Place..!!");
	 f3(name);
 } 
 void f5(string name)
 {
	 System.out.println("Hii...Your are at Wrong Place..!!");
	 f4(name);
 } 
 void f6(string name)
 {
	 System.out.println("Hii...Your are at Wrong Place..!!");
	 try{
		  f5(name);
	 }
catch(NormalFormatException e)
{
	 System.out.println(e);
}	
finally
{
	 System.out.println("Hii...You got right Place...!!");
}
 }
}

class mainpropagation
{
	static public void main(String args[])
	{
		propagation1 a1 = new propagation1();
		
		Scanner s1 = new Scanner(System.in);
		string name = a1.nextLine();
		
		a1.f6(name);
	}
}