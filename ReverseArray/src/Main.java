import java.util.Arrays;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub	
		int[] myIntArray = {1,2,3,4,5};
		System.out.println(Arrays.toString(reverseArrayIteratively(myIntArray, 0, myIntArray.length-1)));
		System.out.println(Arrays.toString(reverseArrayRecursively(myIntArray, 0, myIntArray.length-1)));
	}
	
	public static int[] reverseArrayIteratively(int[] array, int first, int end) {
		while (first < end) {
			int temp = array[end];
			array[end] = array[first];
			array[first] = temp;
			first++;
			end--;
		}
		return array;	
	}	
	
	public static int[] reverseArrayRecursively(int[] array, int first, int end) {
		int temp = array[end];
		array[end] = array[first];
		array[first] = temp;
		first++;
		end--;
		if (first < end) {
			reverseArrayRecursively(array, first, end);
		}
		else {
			return array;
		}
		return array;
	}
}

