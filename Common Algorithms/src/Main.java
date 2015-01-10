import java.util.ArrayList;
import java.util.HashMap;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		trackTimeForRegularFibonacciRecursion();
		trackTimeForHashMapMemoization();
		trackTimeForArrayMemoization();
	}
	
	static void trackTimeForRegularFibonacciRecursion() {
		long startTime = System.nanoTime();
		System.out.println(fibonacci(30));
		long endTime = System.nanoTime();
		long duration = (endTime - startTime);  //millisecond is 1/1000 of a second
		System.out.println("Duration in nanoseconds for regular recursion: " + duration);
	}
	
	static void trackTimeForArrayMemoization() {
		long startTime = System.nanoTime();
		long[] array = new long[50];
		System.out.println(fibonacciArrayMemoization(30, array));
		long endTime = System.nanoTime();
		long duration = (endTime - startTime);  //millisecond is 1/1000 of a second
		System.out.println("Duration in nanoseconds for array memoization: " + duration);
	}
	
	static void trackTimeForHashMapMemoization() {
		long startTime1 = System.nanoTime();
		HashMap<Integer, Long> h = new HashMap<Integer, Long>();
		System.out.println(fibonacciCachingHashVersion(30, h));
		long endTime1 = System.nanoTime();
		long duration = (endTime1 - startTime1);  //millisecond is 1/1000 of a second
		System.out.println("Duration in nanoseconds for hashmap memoization: " + duration);
	}
	
	//find nth term of fibonacci
	static int fibonacci(int n) {
		if (n==0)
			return 0;
		else if (n==1)
			return 1;
		
		return fibonacci(n-2) + fibonacci(n-1);
		
	}
	
	static long fibonacciArrayMemoization(int n, long[] array) { 
		//extremely more efficient when tracking time to use array instead of HashMap
		if (n==0)
			return 0;
		else if (n==1)
			return 1;
		
		if (array[n] != 0) //primitive types in Java cannot be null
			return array[n];
		
		array[n] = fibonacciArrayMemoization(n-2, array) + fibonacciArrayMemoization(n-1, array);
		return array[n];
	}
	
	//according to popular debate, ArrayList is a better choice for memoization in this situation
	//because there's an ordered sequence of integers as keys - and we never want to make the keys mutable
	//Hashmap won't guarantee order either 
	//But, it does make syntax pretty simple as you see below, you don't even to declare size beforehand like you do for arrayList
	static long fibonacciCachingHashVersion(int n, HashMap<Integer, Long> h) {
		if (n==0)
			return 0;
		else if (n==1)
			return 1;
		else if (n >= 2) {
			if (h.containsKey(n)) {
				return h.get(n);
			}
			h.put(n, fibonacciCachingHashVersion(n-1, h) + fibonacciCachingHashVersion(n-2, h));
			return h.get(n);
		}
		else
			//error condition
			return -1;
	}
	
}
