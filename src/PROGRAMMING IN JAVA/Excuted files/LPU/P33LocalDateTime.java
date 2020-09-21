/* This program is used to implement methods of LocalDateTime class.It
will give us date and time both (in default format)separated by 'T' 
*/
import java.time.*;
class LogicLocalDateTime
{
	void localDateTimeMethods()
	{
	LocalDateTime obj = LocalDateTime.now();
	System.out.println("the now() local time is   "+obj);

/*The LocalTime representing a specific hour,minute,second,nanosecond
can be obtained using the “of” method or by using the “parse” method.*/
	
	LocalDate ld=LocalDate.now();
	LocalTime lt=LocalTime.now();
	System.out.println(LocalDateTime.of( 2010, Month.JULY, 03,12, 54)); 
	System.out.println(LocalDateTime.of( 2010, Month.JULY, 03,12, 54, 13)); 
	System.out.println(LocalDateTime.of( 2010, Month.JULY, 03,12, 54, 13,54)); 
	System.out.println(LocalDateTime.of(ld,lt)); 
	System.out.println(LocalDateTime.parse("2017-09-23T13:45:30.123456789"));


/*  All get___ (), all plus___() ,all minus___(),all With___() methods
 of LocalDate and LocalTime class are working in LocalDateTime class.
Only difference is return type of some methods would be LocalDateTime
instead of either LocalDate and LocalTime*/


	
	}
}

class P33LocalDateTime
{
	public static void main(String a[])
	{
	LogicLocalDateTime obj=new LogicLocalDateTime();
	obj.localDateTimeMethods();
	}
}

