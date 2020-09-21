import java.util.*;

class DequeExam
{
	public static void main(String args[])
	{
		ArrayDeque<String> obj = new ArrayDeque<String>();
		obj.offer("Ravi_Reddy");
		obj.offerLast("Mittu_Muithan");
		obj.offerFirst("Charan_Cherry");
		//obj.offer("");
		obj.add("Karunakar");
		obj.addFirst("CharanReddy");
		obj.addLast("Ravi_A");
		
		for(Object o :obj)
		{
			System.out.println("" +o);
		}
		
		 obj.peekFirst();
		 obj.peekLast();
		 
		 
//Deleteing From First & Last
		
		for(int i=0;i<2;i++)
		{
			//System.out.println(""+obj.remove(i));
			obj.remove();
		}
		
		obj.removeFirst();
		obj.removeLast();
		obj.pollLast();
		obj.pollFirst();
		obj.poll();
		
		System.out.println("" +obj);
		
//Retriving data from the List

        bbj.get();
		obj.getFirst();
		obj.getLast();
		
		System.out.println("" +obj);
		 
	}
}