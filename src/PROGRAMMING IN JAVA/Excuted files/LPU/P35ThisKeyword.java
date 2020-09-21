/*This program is done to implement "this" keyword. USE:When the 
name of data member and local variables inside member method is same.
this keyword is used to access the data members, of current class in 
execution, within the local method having same named local variable.*/

class LogicThisKeyword
{ 	int i=90;      //data member i
	void add(int i)  //local variable i of add method as as argument
	{   
/*with in the local block (this.i)to access data member and (i) to access local variable */
	
	i=i+5; //local i will be incremented by (local i+5 i.e. 15))   
	System.out.println("the value of local i by (i=i+1)will become   "+i);
		
	i=this.i+5; //local i will be updated by (data member i+5 i.e. 95)) 
	System.out.println("the value of local i by (i=this.i+1)will become  "+i);
	
	this.i=i+5;  //data member i will be updated by (local i+5 i.e. 100)
	System.out.println("the value of data member i by (this.i=i+1) will become  "+this.i);
		
	this.i=this.i+5; //data member i will be updated by (data member i+5 i.e. 105)	
	System.out.println("the value of data member i by this.i=this.i+1 will become"+this.i);
	}
}

class P35ThisKeyword
{
	public static void main(String a[])
	{
	LogicThisKeyword obj=new LogicThisKeyword();
	obj.add(10);   //local i of add method is assigned a value 10
	}
}
