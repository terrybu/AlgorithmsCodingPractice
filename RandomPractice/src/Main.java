
public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		String test = "aaaaaabbbbbbdddddcaaaabbbbbpaaaabbbbdrrrr";
		System.out.println(StringSolver.findFirstNonRepeatingCharacter(test));
		
		int[] intArray = {2,1,1,4,1,1,2,4};
		System.out.println(ArraySolver.returnNumberOfWaysSplitIntoTwoArraysBothHaveAllUniques(intArray));
			
		String test1 = "ramen";
		System.out.println(StringSolver.reverseString(test1));
		
		String test2 = "Hello";
		System.out.println(StringSolver.reverseRecurse(test2));
		
	}

}
