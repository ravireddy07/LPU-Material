/*program is telling about the implementation of control structure. 
when there is one statement to execute if the condition is true,
control structures body is optional.
we use relational operator in round bracket to check condition
 which return boolean, if true then run the body of if statement*/

import java.util.*;

class LogicControlStructure
{
void conditionStatements()
{
System.out.println("***************if statement************* ");
int a=6;
if(a%2==0)       //if statement   (doaction only when condition is true  
{           
System.out.println("number is even");
}


System.out.println("***************if-else statement************* ");

if(a%2==0)     //if else   (when two actions are there ,
         // if condition not true something should be done then also.)
System.out.println("number is even");
else
{                 //body is optional
System.out.println("number is not even");
}



System.out.println("***************nested if with brackets statement************* ");

if(a%2==0)//nested if with brackets(when multiple checks are applied)
{
if(a<10)
{
if(a!=5)
{
System.out.println("the value of a in nested if with brackets is"+a);
}
}
}

System.out.println("***************nested if without brackets statement************* ");

if(a%2==0)    //same nested if without brackets works well as each if has one statement
if(a<10)
if(a!=5)
System.out.println("the value of a in nested if without bracket is"+a);

System.out.println("***************switch statement************* ");
int choice;
System.out.println("Enter status from 0 to 3:");
Scanner s1=new Scanner(System.in);
choice=s1.nextInt();

	switch (choice)
		 {
  			case 0:  System.out.println("compute taxes for single filers");
           			break;
  			case 1:  System.out.println("compute taxes for married file jointly");
           			break;
  			case 2:  System.out.println("compute taxes for married file separately");
           			break;
  			case 3:  System.out.println("compute taxes for head of household");
           			break;
  			default: System.out.println("Errors: invalid status");
           			System.exit(0);
		}



System.out.println("***************nested switch statement************* ");
String gender;
System.out.println(" press m for male and f for female ");    		
Scanner s=new Scanner(System.in);
gender=s.next();
		switch (gender)
		 {
		case "m":
			System.out.println(" press 1 for salary >10000 otherwise press 2");
           				int choice1;
					choice1=s.nextInt();
				switch(choice1)
				{
  			case 1:  System.out.println("your tax amount will be 10% of total salary");
           			break;
  			case 2:  System.out.println("your tax amount will be 20% of total salary");
           			break;
  			default: System.out.println("Errors: invalid choice");
           			System.exit(0);
				}
			break;
		case "f":
			System.out.println(" press 1 for salary >10000 otherwise press 2");
           			int choice2;
				choice2=s.nextInt();
				switch(choice2)
				{
  			case 1:  System.out.println("your tax amount will be 5% of total salary");
           			break;
  			case 2:  System.out.println("your tax amount will be 10% of total salary");
           			break;
  			default: System.out.println("Errors: invalid status");
           			System.exit(0);
				}
		default: System.out.println("Errors: invalid gender");
           	System.exit(0);break;
		}
}

/*when same operation need to be applied many times on different 
data or same data. Every iteration statment has three steps i.e. 
initialisation(int a=1) condition(a<10) and iteration i++*/

void iterationStatements() 
{ 
System.out.println("***************while loops************* ");

int i=1;     //initialisation
while(i<10)   //condition
{
System.out.println("inside while loop");  
i++;         //iteration
}



System.out.println("***************do-while loop************* ");
int b=1;     //initialisation
do
{
System.out.println("inside do-while loop"); 
b++;     //iteration
}while(b<10);   //condition

System.out.println("ended do- while loop"); 



System.out.println("***************for loop************* ");

System.out.println("started for loop"); 
for(int c=0;c<10;c++)   //all three written in one line separated by semicolons
{
System.out.println("inside while loop"); 
}
System.out.println("ended for loop"); 

}

//break,continue,return (we will do return with methods)
void branchingStatements()
{	
System.out.println("***************inside unlabeled break************* ");
//Break :forceful exit from current loop
for(int i=0; i<100; i++) 
	{	
		if(i == 10) 
		break;   

				/*when i will become 10. it will exit
				 from loop and go to next immediate
				 line out of loops body to execute*/
	System.out.println("value of i is" + i);
	}


System.out.println("***************inside labeled loop************* ");

   outer:	
		for(int i=0; i<3; i++)
		{
		System.out.println("Outer loop value of i is "+ i);
			inner:
		    	for(int j=0; j<3; j++)
			{
			 System.out.println("Inner loop value of i is "+j);
			  if(i== j+1)
			  break outer;		   
			  System.out.println("Bye");	
			}
		  }


//continue:skip the execution of current iteration and start the next one
System.out.println("***************inside unlabeled continue.************* ");
String str = "she saw a ship in the sea"; 
		int size = str.length(); 
		int count = 0; 
		for (int i = 0; i < size; i++) 
		    { 
			if (str.charAt(i) != 's') 	
			     continue;
			count++; 
		    } 
System.out.println("Number of s in "+ str + " = "+ count); 


System.out.println("***************inside labeled continue.************* "); 
outer: for (int i=0; i<3; i++) 
	{
		for(int j=0; j<3; j++)
		 {
			if(j > i) 
			{
			System.out.println("Hi");
			continue outer;   
			}
			System.out.print(" " + (i * j));
		}
	}
}
}


public class P9ControlStructures
{
public static void main(String args[])
{LogicControlStructure obj=new LogicControlStructure();
obj.conditionStatements();
obj.iterationStatements();
obj.branchingStatements();
}
}