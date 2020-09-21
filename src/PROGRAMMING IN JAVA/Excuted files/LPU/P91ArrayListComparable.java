/*Comparable vs Comparator in Java
Java provides two interfaces to sort objects using data members 
of the class:
Comparable
Comparator
A comparable object is capable of comparing itself with another 
object.The class itself must implements the java.lang.Comparable 
interface to compare its instances. This program uses Comparable 
Interface :compareTo() method*/

import java.util.*;
class Student implements Comparable<Student>   //implements comparable compulsory
{
	String name;
	int rollno;
	double cgpa;
	Student(){}
	Student(String n,int r, double c)
	{
		name=n;rollno=r;cgpa=c;
	}
	public String toString()
	{
		return "name="+name+"\nrollno ="+rollno+"\ncgpa = "+cgpa;
	}
	public int compareTo(Student s)
	{
		//return(this.rollno>s.rollno ? 1:-1);
		return this.rollno = s.rollno;
	}	
}

class P91ArrayListComparable
{
	public static void main(String args[])
	{
  	 ArrayList<Student> l=new ArrayList<Student>();
   	l.add(new Student("Akaur",110,9.67));
   	l.add(new Student("rohit",102,9.57));
   	l.add(new Student("pandya",103,9.47));
			//if we use  TreeSet no sorting is required explicitly,It happens implicitly
   	Collections.sort(l);  //it internally calls compareTo()		
   	System.out.println(l);
   
   	Iterator itr=l.iterator();
   	while(itr.hasNext())
   	{
	   System.out.println(itr.next());
   	}
   }
}
/*
Now, suppose we want sort movies by their rating and names also.
 When we make a collection element comparable
(by having it implement Comparable),
 we get only one chance to implement the compareTo() method. 
The solution is using Comparator.*/