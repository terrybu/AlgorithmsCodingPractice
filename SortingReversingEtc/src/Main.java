
public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		String test = "aaaaaabbbbbbdddddcaaaabbbbbpaaaabbbbdrrrr";
		System.out.println(StringSolver.findFirstNonRepeatingCharacter(test));
		
		int[] intArray = { 3,2,1,0,4,-2 };
		ArraySolver.bubbleSort(intArray);
		ArraySolver.printoutArray(intArray);
		
		int[] array2 = {3,2,1,0};
		ArraySolver.insertionSort(array2);
		ArraySolver.printoutArray(array2);
		
		int[] array3 = {10,-50,200,100};
		ArraySolver.mergeSort(array3);
		ArraySolver.printoutArray(array3);
		
		String test1 = "ramen";
		System.out.println(StringSolver.reverseString(test1));
		
		String test2 = "Hello";
		System.out.println(StringSolver.reverseRecurse(test2));
		
		String test3 = "forrest gump";
		System.out.println(StringSolver.reverse(test3));
		
		SalaryWorker chojiro = new SalaryWorker();
		chojiro.day = DayOfWeek.MONDAY;
		chojiro.printWhatHeIsThinking();
		
	}

}
