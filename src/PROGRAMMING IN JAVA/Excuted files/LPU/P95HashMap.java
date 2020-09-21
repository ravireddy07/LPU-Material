/*Map interface does not belong to Collection Interface.It is used to
 store data in form of key value pair */

import java.util.*;
class P95HashMap
{
     public static void main(String ar[])
     {
 		Map<Integer,String> obj=new HashMap<Integer,String>();
		obj.put(1,"aa");
		obj.put(2,"b");
		obj.put(3,"c");
		obj.put(4,"d");
		obj.put(5,"e");
		
/* Entry is an sub interface of Map interface, it has entrySet() 
method to access set of key-value pair.It also has getKey() to get 
key and getValue() to get value*/

		for(Map.Entry p:obj.entrySet()) //will give key-value pair as output
		{
		System.out.println(p);    //way 1
		}
		
		for(Map.Entry p:obj.entrySet())  //will give key as output
		{
		System.out.println(p.getKey());     //way 2
		}

		for(Map.Entry p:obj.entrySet())    //will give value as output
		{
		System.out.println(p.getValue());   //way 3
		}
		
		obj.remove(2);
		System.out.println(obj);    //way 4 to traverse after removal
        }
}