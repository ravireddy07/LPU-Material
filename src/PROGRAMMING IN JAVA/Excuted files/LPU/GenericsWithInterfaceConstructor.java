import java.util.*;

interface LogicWild<T> extends Number<T>
{
	T []arr;
	public LogicWild(T []array)
	{
		arr = array;
	}
	public double average()
	{
		double sum = 0.0;
		for(int i=0;i<arr.length;i++)
		{
			sum = sum+arr[i].doubleValue();
		}
		return (sum/arr.length);
	}
	public boolean same(LogicWild<?> z)
	{
		if(average() == (z.average()))
		    return true;
		else
			return false;
	}
}
class WildcardType
{
	public static void main(String args[])
	{
		Integer inums[] = { 1, 2, 3, 4, 5 };
		LogicWild<Integer> iob = new LogicWild<Integer>(inums);
		
		Double dnums[] = {1.1, 2.2, 3.3, 4.4, 5.5};
		LogicWild<Double> dob = new LogicWild<Double>(dnums);
		
		if(dob.same(iob))
			System.out.println("Same Average");
		else
			System.out.println("No Same Average");
	}
}