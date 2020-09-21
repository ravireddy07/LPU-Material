
enum Day{ 
        SUNDAY, MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY;   
}
public class P17Enum{
	public static void main(String [] args){
		
    		Day d;
		d = Day.MONDAY ;

    		System.out.println(d);
    		System.out.println(d.valueOf("SUNDAY"));
    	
    		for(Day i : Day.values()){ 
        			System.out.println(i);
     		}
    	}
}