/*ArrayList has 3 constructors and 13 methods to make dynamic 
collection which can grow and shrink at tun time*/
import java.util.ArrayList;

class LogicArrayListMethods
{
ArrayList cityList = new ArrayList();
	void arrayListMethods()
	{
  	cityList.add("London");
        cityList.add("New York");
        cityList.add("Paris"); 
        cityList.add("34");
        cityList.add('t');
        cityList.add(2);
      System.out.println("List size? " +cityList.size() );// 6
      System.out.println("Is London in the list? " +cityList.contains("London")); //true
      System.out.println("Is Toronto in the list? " +cityList.contains("Toronto"));  //false
      System.out.println("The location of last Paris in the list? "+ cityList.lastIndexOf("Paris")); //2
      System.out.println("Is the list empty? " +cityList.isEmpty()); //false
      cityList.add(2, "Beijing");    //added
	  System.out.println("Now, The ArrayList Is: "+cityList);
      cityList.remove("London");
      cityList.remove(1);  //Removing Beijingv(1st Index)
      cityList.remove(cityList.indexOf(2));  
      for (int i = 0; i < cityList.size(); i++)
      System.out.println(cityList.get(i) + " "); 
 
}
  }

public class P15ArrayList 
{
     public static void main(String[] args) 
	{  
	LogicArrayListMethods obj=new LogicArrayListMethods();
	obj.arrayListMethods();
	
	}
}
  