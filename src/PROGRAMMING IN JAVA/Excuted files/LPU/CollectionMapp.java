import java.util.*;

class Mapp
{
	public static void main(String args[])
	{
		Map<String,Integer> obj = new HashMap<String,Integer>();
		
		obj.put("Ravi",7);
		obj.put("Cherri",07);
		obj.put("Mittu",007);
		obj.put("RaviReddy",77);
		obj.put("CharanReddy",077);
		obj.put("MuithanReddy",0077);
		obj.put("KarunakarReddy",777);
		
		for(Map.Entry m: map.entrySet())
		{
			System.out.println(m.getKey()+""+m.getValue());
		}
	}
}