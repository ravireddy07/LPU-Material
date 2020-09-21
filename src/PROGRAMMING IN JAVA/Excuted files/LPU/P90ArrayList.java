/*java provides me collection framework under "util" package.It has 
predefined set of interfaces and classes ,which consist of methods to
perform manupulation on data storage and access.The supermost interface is 
Collections. It is further extended by 4 sub interfaces i.e.
List:to store duplicate data: ArrayList class
Set:to store non duplicate data: TreeSet class
Map :to store data in key value pair form :HashMap class
Deque: to store and delete data at both ends of queue : ArrayDeque class
This program is for ArrayList.*/

import java.util.*;
class P90ArrayList
{
  public static void main(String []args)
   {
      ArrayList<String> s=new ArrayList<String>();  //genric object of ArrayList class which will hold only string type objects
      s.add("1");
      s.add("a");
      s.add("c");
      s.add("1");	
   	for(int i=0;i<s.size();i++)
	System.out.print(s.get(i));   //way 1 to traverse

      ArrayList s1=new ArrayList();  //non genric object of ArrayList class which will hold any type objects.It will give compile time warning
      s1.add("1");
      s1.add('a');
      s1.add(344);
      s1.add(9.9);	
	for(String o:s)
	System.out.print(o);  //way 2 to traverse

	//System.out.print(s);   //way 3 to traverse,when you SOP object it internally class toString() method

	//MOST APPROPRIATE WAY OF TRAVERSAL IS USING ITERATOR

	
	Iterator a = s1.iterator();
	while(a.hasNext())
	{
		System.out.println(a.next());
    }
}
