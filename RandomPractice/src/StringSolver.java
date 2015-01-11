import java.util.HashMap;


public class StringSolver {

	
	
	public static String reverseRecurse(String string) {
		if (string.length() <= 1)
			return string;
		
		return reverseRecurse(string.substring(1)) + string.charAt(0);
	}
	
	public static String reverseString(String string) {
		//iterative version
		//you can't reverse actual string passed as argument because strings are immutable in Java
		String result = "";
		
		for (int i = string.length()-1; i >= 0; i--) 
			result = result + string.charAt(i);
		
		return result;
	}
	
	
		
	
	
	public static Object findFirstNonRepeatingCharacter (String string) {
		HashMap<Character, Integer> h = new HashMap<Character, Integer>();
		//first time you run through the string, put it into hash and start counting
		for (int i=0; i < string.length(); i++) {
			char c = string.charAt(i);
			if (h.containsKey(c)) {
				h.put(c, h.get(c)+1);
			}
			else {
				h.put(c, 1);
			}
		}
		
		//iterating through the keys in a hashmap
//		for (char c: h.keySet()){
//            char key = c;
//            String value = h.get(c).toString();  
//            System.out.println(key + " " + value);  
//		} 
		
		//second time, we loop through string once more and check against hash. The first time we find a counter of >= 2, we return
		for (int i=0; i < string.length(); i++) {
			char c = string.charAt(i);
			if (h.get(c) == 1)
				return c;
		}
		
		return null; 
	}
	
}


