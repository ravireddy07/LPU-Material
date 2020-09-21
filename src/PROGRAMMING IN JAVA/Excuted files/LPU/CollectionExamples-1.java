import java.util.*;

class Co
{
	ArrayList obj = new ArrayList();
	
	obj.add("Ravi");
	obj.add(143);
	obj.add('a');
	
	Iterator itr = new iterator();
	while(obj.hasNext())
	{
		System.out.println("" +obj.get());
	}
	
}

//javap java.lang.Integer