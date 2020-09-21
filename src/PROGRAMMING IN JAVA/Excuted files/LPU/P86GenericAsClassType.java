/*generic as a class type: when generic class will hold class objects type data.*/
class Student
{
	String name;
	int rollno;
	Student( String n,int r)
	{
           name =n;
	       rollno=r;
	}
	public String toString()
	{
	return name+ "\n"+rollno;
	}
}
class LogicGen<Student>     //generic class
{
	Student ob;     //generic type data member
	Student get(Student ob)   //generic method with generic ret and argument type
		{
		this.ob=ob;
		return ob;
		}
	void belonging()
			{  //used to know actual type of generic
	System.out.println("anything is" +ob.getClass().getName());
			}
}
class P86GenericAsClassType
{
	public static void main(String args[])
		{
		LogicGen<Student> obj=new LogicGen<Student>(); 
		Student a=obj.get(new Student("abc",1));  //unboxing
		System.out.println(""+a);
		obj.belonging();
}}