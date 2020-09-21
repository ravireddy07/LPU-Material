class Stats<T extends Number> 
{
	T[] nums; 
	Stats(T[] ob) 
		{
		nums = ob;
		}
	double average() {
		double sum = 0.0;
		for(int i=0; i < nums.length; i++)
			sum += nums[i].doubleValue(); // Error!!!
			return sum / nums.length; 
		}
	}

class P87BoundsDemo 
{	public static void main(String args[]) 
	{		
		Integer inums[] = { 1, 2, 3, 4, 5 };
		Stats<Integer> iob = new Stats<Integer>(inums);	
		double v = iob.average();
		System.out.println("iob average is " + v);
		// System.out.println("iob average is " + v.getClass().getName());       it will print when v variable is Wrapper class
		
		Double dnums[] = { 1.1, 2.2, 3.3, 4.4, 5.5 };		
		Stats<Double> dob = new Stats<Double>(dnums);		
		double w = dob.average();		
		System.out.println("dob average is " + w);	
	}
} 
