import java.util.Arrays;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub	
		int[] myIntArray = {1,2,3,4,5};
		System.out.println(Arrays.toString(reverseArrayIteratively(myIntArray)));
		System.out.println(Arrays.toString(reverseArrayRecursively(myIntArray, 0, myIntArray.length-1)));
	
		
	}
	
	public static int[] reverseArrayIteratively(int[] array) {
		int first = 0;
		int end = array.length-1;
		while (first < end) {
			int temp = array[end];
			array[end] = array[first];
			array[first] = temp;
			first += 1;
			end -= 1;
		}
		return array;	
	}	
	
	public static int[] reverseArrayRecursively(int[] array, int first, int end) {
		if (first >= end) {
			return array;
		}
		int temp = array[end];
		array[end] = array[first];
		array[first] = temp;
		return reverseArrayRecursively(array, ++first, --end);
	}
}

