import java.util.Arrays;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int[] array = {32,0,21,-3};
		mergeSort(array);
		for (int i : array) {
			System.out.print(i);
			System.out.print(" ");
		}
	}
	
	public static void mergeSort(int[] array) {
		//merge sort works by dividing an array into one element arrays recursively
		//and then building them back up using "merge" 
		//this mergeSort function itself stays very similar across languages, no need to change this
		//but the "Merge" function below can have a lot of different approaches (recursive vs iterative etc) 
		//this iterative version below for merge is very fast
		if (array.length <= 1)
			return;
		else {
			int middleIndex = array.length/2;		
			int[] leftArray = Arrays.copyOfRange(array, 0, middleIndex); 
			//copyOfRange is start...last (last one exclusive, may exist out of range
			int[] rightArray = Arrays.copyOfRange(array, middleIndex, array.length);
			
			mergeSort(leftArray); //first time, it's 32, 0 ...  
			mergeSort(rightArray); //first time it's 21, -3
			
			merge(array, leftArray, rightArray);
		}
		
	}
	
	private static void merge(int[] original, int[] left, int[] right) {
		//we overwrite the original array with sorted information
		int iLeft, iRight, i;
		iLeft = iRight = i = 0;
		
		while (iLeft < left.length && iRight < right.length) {
			if (left[iLeft] <= right[iRight]) {
				original[i] = left[iLeft];
				iLeft++;
			}
			else if (right[iRight] <= left[iLeft]) {
				original[i] = right[iRight];
				iRight++;
			}
			i++;
		}
		
		//if the while condition doesn't run, it means that we finished iterating entirely through either array. 
		//in that case, just put the other sorted array entirely into the result array
		if (iLeft >= left.length) {
			for (int j = iRight; j < right.length; j++) {
				original[i] = right[j];
				i++;
			}
		}
		else if (iRight >= right.length) {
			for (int j = iLeft; j < left.length; j++) {
				original[i] = left[j];
				i++;
			}
		}
		
		
	}
	
}
