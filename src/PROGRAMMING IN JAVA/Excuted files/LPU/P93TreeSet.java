/*Tree set belongs to SortedSet interface.It implements Comparator interface internally.
It sort the list in ascending order by default.
Interface reference can be created but no object. 
Collection a; (right)
new Collection(); (Wrong)*/

import java.util.*;
class P93TreeSet
{
     public static void main(String a[])
    {
	Collection<String> obj=new TreeSet<String>();    //upcasting:genric treeset object
	obj.add("c");
	obj.add("b");
	obj.add("a");
	obj.add("b");
	Iterator itr= obj.iterator();
	while(itr.hasNext())
	  {
		System.out.println(""+ itr.next());
	   }
    }
}