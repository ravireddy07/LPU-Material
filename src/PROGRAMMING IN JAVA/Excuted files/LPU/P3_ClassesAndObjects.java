/*Program to tell about classes and objects.To apply the concept 
of pure oops,two classes are made where first class(BOX) consist 
of logic and second class(P14ClassesAndObjects) consist of main
 method from where the execution starts.So if we want to access 
the logic of first class from the main method(defined in second class),
we need to make the object of first class in main and then using object 
name ,we can access the data of first class.*/

class Box 
{      
/*non static data members(properties) and member methods(behaviour)
can be accessed outside class by making object of class Box*/

	double width;    //properties or data members are width,height,depth
	double height;
	double depth;

/*behaviour is something which will apply some logic over the 
properties to find behaviour of an object*/

	void readData()  //volume and read data are behaviours or methds
	{
	width=9;
	height=10;
	depth=11;
	}

	double volume()   //with return type method
	{
	return width * height * depth;       
	}              
}

public class P3_ClassesAndObjects
{
	public static void main(String args[]) 
	{
//object creation syntax: Class_name ref_Variable=new ClassNAme();

		Box mybox1 = new Box(); 
        
//objectname.methodcall will execute the readData defined in first class
		
		mybox1.readData(); 
  
		double vol = mybox1.volume();
		System.out.println("Volume of mybox1 is " + vol);
		//System.out.println("Volume of mybox1 is " + mybox1.volume());
		}             
}

