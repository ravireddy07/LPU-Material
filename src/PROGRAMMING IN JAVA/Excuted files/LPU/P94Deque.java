/*To implement the storage using deque.Deque is an interface and 
ArrayDeque is a concrete class ,whose object actually stores the 
data. Poll,peek and offer methods give empty list if no data. add 
,remove,get  will give exception if list is empty*/

 import java.util.*;
class P94Deque
{
   public static void main(String arg[])
   {
	Deque obj=new ArrayDeque();    //4 method to add data to deque
	obj.offerFirst("a");
	obj.addFirst("b");
	obj.offer("c");
	obj.add("d");
	System.out.println(""+obj);


	obj.poll();   //4 method to delete data to deque
	System.out.println("after poll"+obj);

	obj.pollFirst();
	System.out.println("after pollFirst"+obj);

	obj.remove();
	System.out.println("after remove"+obj);
	
	obj.removeFirst();
	System.out.println("after removeFirst"+obj);*/

	System.out.println(""+obj.getFirst());  /4 method to retrieve data to deque
	System.out.println(""+obj.getLast());
	System.out.println(""+obj.peekFirst());
	System.out.println(""+obj.peekLast());

	Iterator itr=obj.iterator();
	while(itr.hasNext())
	 	{
		System.out.println(""+itr.next());
		}
    }
}