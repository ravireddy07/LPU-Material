import java.util.*;

class Mittu
{
	public void p1000()
	{
		p300();
		p300();
		p300();
		p100();
	}
	public void p300()
	{
		p100();
		p100();
		p100();
	}
	public void p100()
	{
		p30();
		p30();
		p30();
		p10();
	}
	public void p30()
	{
		p10();
		p10();
		p10();
	}
	public void p10()
	{
		p3();
		p3();
		p3();
		p1();
	}
	public void p3()
	{
		p1();
		p1();
		p1();
	}
	public void p1()
	{
		System.out.println("Ravi Reddy");
	}
	public static void main(String args[])
	{
		new Mittu().p1000();
	}
}