import java.time.*;
class LogicLocalDate
{
	LocalDate obj;
	void localDate()
	{

	LocalDate obj = LocalDate.now();
	System.out.println("the now() local date is   "+obj);

/*The LocalDate representing a specific day, month and year can be 
obtained using the “of” method or by using the “parse” method.*/

	System.out.println(LocalDate.of(2015, Month.FEBRUARY, 20)); 
	System.out.println(LocalDate.parse("2015-02-20"));

	
	int year= obj.getYear();
	System.out.println("the year given by getYear() method is   "+year);

	int value_of_month= obj.getMonthValue();
	System.out.println("the value odmonth given by getMonthValue() method is   "+value_of_month);
	
	Month month_name= obj.getMonth();
	System.out.println("the month name given by getMonth() method is   "+month_name);
	
	int day_of_month= obj.getDayOfMonth();
	System.out.println("the day of month value given by getDayOfMonth() method is   "+day_of_month);
	
	int day_of_year= obj.getDayOfYear();
	System.out.println("the year given by getDayOfYear() method is   "+day_of_year);

	DayOfWeek DOW= obj.getDayOfWeek();
	System.out.println("the day of week given by DayOfWeek() method is   "+DOW);
	
	boolean leapYear = LocalDate.now().isLeapYear();
	System.out.println("the current day is leap year?"+leapYear);

	
/*  If we want to talk about past (minus) dates and furute (plus) dates*/

LocalDate plus_year = obj.plusYears(2018);
System.out.println("plus year is   "+plus_year);

LocalDate plus_month= obj.plusMonths(6);
System.out.println("plus month is   "+plus_month);

LocalDate plus_weeks= obj.plusWeeks(6);
System.out.println("plus weeks is   "+plus_weeks);

LocalDate plus_days= obj.plusDays(45);
System.out.println("plus days is   "+plus_days);

LocalDate minus_year = obj.minusYears(2018);
System.out.println("minus year is   "+minus_year);

LocalDate minus_month= obj.minusMonths(6);
System.out.println("minus month is   "+minus_month);

LocalDate minus_weeks= obj.minusWeeks(6);
System.out.println("minus weeks is   "+minus_weeks);

LocalDate minus_days= obj.minusDays(45);
System.out.println("minus days is   "+minus_days);
	

	LocalDate tomorrow = LocalDate.now().plusDays(1);
	System.out.println("tomorrow's date is   "+tomorrow);

	LocalDate tomorrow1 = obj.plusDays(1);
	System.out.println("tomorrow's date with second logic is   "+tomorrow);

	LocalDate yesterday1= obj.minusDays(1);
	System.out.println("yesterday date is   "+yesterday1);

	

/*The relationship of a date to another date can be determined to occur 
before or after another date:*/

	boolean notBefore = LocalDate.parse("2016-06-12").isBefore(LocalDate.parse("2016-06-11"));
	System.out.println("is parsed date <another parsed date"+notBefore);

	boolean isAfter = LocalDate.parse("2016-06-12").isAfter(LocalDate.parse("2016-06-11"));
	System.out.println("is parsed date > another parsed date"+isAfter);

/* the below 4 will talk about the specific month,year and day and 
rest of the two parameters remain current */

	LocalDate with_year=obj.withYear(1999);  //year 1999 but date and month remains today's
	System.out.println("with year is   "+with_year);
  
	LocalDate with_month=obj.withMonth(10);      //within 1-12
	System.out.println("with month is   "+with_month);

	LocalDate with_day_of_month=obj.withDayOfMonth(15); //within 1=31
	System.out.println("with day of month is   "+with_day_of_month);

	LocalDate with_day_of_year=obj.withDayOfYear(344); //within 1=365
	System.out.println("with say of year is   "+with_day_of_year);
	}
}

class P31LocalDate
{
	public static void main(String a[])
	{
	LogicLocalDate obj=new LogicLocalDate();
	obj.localDate();
	}
}

