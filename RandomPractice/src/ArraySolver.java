public class ArraySolver {

	
	static void printoutArray(int[] array) {
		
		for (int i : array) {
			
			System.out.print(i);
			System.out.print(" ");
		}
		
		System.out.println(" ");
		
	}
	
	
	static int[] bubbleSort(int[] array) {
		
		boolean swapped = true;
		while (swapped) {
			swapped = false;
			for (int i=0; i < array.length-1; i++) {
				if (array[i] > array[i+1]) {
					int temp = array[i+1];
					array[i+1] = array[i];
					array[i] = temp;
					swapped = true;
				}
			}
		}
		return array;
	}
	
	
}
