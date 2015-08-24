public class Increment {

	public static void main(String[] args) {
		System.out.println(incrementString("11"));
		System.out.println(incrementString("999"));
		System.out.println(incrementString("486"));
		System.out.println(incrementString("999999"));
	}

	public static String incrementString(String str) {
		int carry = 1;
		String result = ""; 
		for (int i=str.length()-1; i >= 0; i--) {
			char oldChar = str.charAt(i);
			int oldInt = Character.getNumericValue(oldChar);
			int newInt = oldInt + carry;	
			char resultChar; 
			if (newInt == 10) {
				resultChar = '0';
			}
			else {
				resultChar = Integer.toString(newInt).charAt(0);
				carry = 0;
			}
			result = resultChar + result;
		}
		if (carry == 1)
			result = carry + result;
		return result;
	}
}




