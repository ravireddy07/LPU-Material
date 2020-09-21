/*StringBuilder class is betterversion of String class. StringBuilder
class objects are mutable(can be manipulated).code consist of methods of String class*/


class LogicStringBuilder
{
 	void stringBuilderMethods()
		{

		StringBuilder sb=new StringBuilder("Hello my students.");
		sb.append("xyz");
		System.out.println(sb);
		System.out.println(sb.length());
		sb.setLength(30);
		System.out.println(sb.length());
		System.out.println(sb);
		sb.setCharAt(2, 'w');
		System.out.println(sb);
		sb.reverse();
		System.out.println(sb);
		sb.reverse();
		sb.insert(2,'y');
		System.out.println(sb);
		sb.deleteCharAt(5);
		System.out.println(sb);
		sb.delete(5,10);
		System.out.println(sb);
		System.out.println(sb.substring(5));
		System.out.println(sb);
		System.out.println(sb.substring(5, 7));
	}
}
public class P19StringBuilder
{
	public static void main(String [] ar)
	{
	 LogicStringBuilder obj=new LogicStringBuilder();
		obj.stringBuilderMethods();
	}
}



