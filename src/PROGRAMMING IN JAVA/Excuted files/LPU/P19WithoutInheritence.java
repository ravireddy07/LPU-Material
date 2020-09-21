/*this is the program without inheritence,there are million breeds of 
animal and every animal is having a name,age and habbits. If i want to 
solve it without inheritence i need to make million classes for million
types of animal .Similarly million times I need to define the 
properties(DM)and behaviour(MM)which belongs to each animal though.So
not a good idea .It makes you write lot and lot of same code agin and again*/

class Animal
{
String name;
int age;
void read()
{
name="xyz";
age=55;
}
void display()
{
System.out.println(name);
System.out.println(age);
}
}
class Dog
{
String name;
int age;
void read()
{
name="Pqr";
age=5;
}
void display()
{
System.out.println(name);
System.out.println(age);
}
}
class P19WithoutInheritence
{
public static void main(String args[])
{	Dog d=new Dog();
	d.read();
	d.display();
	Animal a=new Animal();
	a.read();
	a.display();
}
}