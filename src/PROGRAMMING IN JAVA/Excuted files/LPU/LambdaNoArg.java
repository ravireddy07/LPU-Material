import java.util.*;
import java.lang.*;

//@FunctionalInterface
interface Try
{
   void say();
}

public class LambdaNoArg
{
    public static void main(String args[])
	{
	    Try t=()->
		{
		  System.out.println("say method of interface is defined");
		};
		t.say();
	}
}