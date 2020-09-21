import java.time.*;
class LogicLocalTime
{
	void localTime()
	{
	LocalTime obj = LocalTime.now();
	System.out.println("the now() local time is   "+obj);

/*The LocalTime representing a specific hour,minute,second,nanosecond
can be obtained using the “of” method or by using the “parse” method.*/

	System.out.println(LocalTime.of(12, 54, 13,54));  //overloaded of() method
	System.out.println(LocalDateTime.of(12, 54)); 
	System.out.println(LocalDateTime.of(12, 54, 13)); 
	System.out.println(LocalTime.parse("13:45:30.123"));

	
	int hour= obj.getHour();
	System.out.println("the hour given by getHour() method is   "+hour);

	int minute= obj.getMinute();
	System.out.println("the value of minute given by getMinute() method is   "+minute);
	
	int second= obj.getSecond();
	System.out.println("the second value given by getSecond() method is   "+second);
	
	int nano= obj.getNano();
	System.out.println("the nano second value given by getNano() method is   "+nano);
	
/*  If we want to talk about past (minus) dates and furute (plus) dates*/

	LocalTime plus_hour = obj.plusHours(8);
	System.out.println("plus hour is   "+plus_hour);

	LocalTime plus_minute= obj.plusMinutes(6);
	System.out.println("plus minute is   "+plus_minute);

	LocalTime plus_second= obj.plusSeconds(6);
	System.out.println("plus second is   "+plus_second);

	LocalTime plus_nano= obj.plusNanos(45);
	System.out.println("plus nano is   "+plus_nano);

	LocalTime minus_hour = obj.minusHours(2018);
	System.out.println("minus hour is   "+minus_hour);

	LocalTime minus_minute= obj.minusMinutes(6);
	System.out.println("minus minute is   "+minus_minute);

	LocalTime minus_second= obj.minusSeconds(6);
	System.out.println("minus second is   "+minus_second);

	LocalTime minus_nano= obj.minusNanos(45);
	System.out.println("minus nano is   "+minus_nano);

/*The relationship of a time to another time can be determined to 
occur before or after another date:*/

	boolean notBeforetime = LocalTime.parse("13:45:30.123").isBefore(LocalTime.parse("13:56:30.123"));
	System.out.println("is parsed time < another parsed time"+notBeforetime);

	boolean isAftertime = LocalTime.parse("13:45:30.123").isAfter(LocalTime.parse("13:56:30.123"));
	System.out.println("is parsed time > another parsed time"+isAftertime);






/* the below 4 will talk about the specific month,year and day and 
rest of the two parameters remain current */

	LocalTime with_hour=obj.withHour(11);  //year 1999 but date and month remains today's
	System.out.println("with hour is   "+with_hour);
  
	LocalTime with_minute=obj.withMinute(10);     
	System.out.println("with minute is   "+with_minute);

	LocalTime with_second=obj.withSecond(15);
	System.out.println("with second is   "+with_second);

	LocalTime with_nano=obj.withNano(34); 
	System.out.println("with nano is   "+with_nano);
	
	}
}

class P32LocalTime
{
	public static void main(String a[])
	{
	LogicLocalTime obj=new LogicLocalTime();
	obj.localTime();

}}

