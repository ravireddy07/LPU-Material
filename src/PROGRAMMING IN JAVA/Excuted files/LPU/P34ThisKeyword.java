
class LogicThisKeyword extends LogicThisKeyword1
{ 	int i;
	
	void add(int i)
	{
	this.i=i*5;
System.out.println("inside logicThisKeyword the value of i is   "+this.i);
	}
}
class P34ThisKeyword
{
	public static void main(String a[])
	{
	LogicThisKeyword obj=new LogicThisKeyword();
	obj.add(10);
	}
}
