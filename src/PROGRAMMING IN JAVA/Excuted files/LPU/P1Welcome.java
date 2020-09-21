import java.lang.*;    // It is optional, if we do not import it , 
			//JVM import this package implicitly 
                        //because it is very basic package to 
			//run java programs


public class P1Welcome  


/*In java Everything resides inside class so one class block/body 
is created as Keyword_class name_of_the_class (it is user defined) 
then { body of class within curly brackets}*/

{
public static void main(String args[])

/*(main fxn from where the program starts executing is also residing 
   inside class and declared static so that can be called by JVM 
  without even object creation of the class, public method of class.*/

//then main method has a body within curly bracket{}

{                
System.out.print("hey welcome to java programming");  

/*to print things over the console screen, System class has
"out" static reference variable having class type PrintStream and 
inside PrintStream class print,println,printf methods are defined*/
} //main method closed
} //class closed


//To compile , in cmd=>  javac name_of_the_file.java (.java is must)
//to run , in cmd=> java Name_of_class_consist_of_main
