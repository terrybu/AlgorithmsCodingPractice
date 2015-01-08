package com.terrybu.LinkedList;

public class LinkedListMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		LinkedList linkedList = new LinkedList();
		
		Node firstNode = new Node("apple");		
		linkedList.head = firstNode;
		
		Node second = new Node("banana");
		Node third = new Node("blueberries");
		
		//Inserting to the beginning of a linkedlist is O(1)
		linkedList.insertAtBeginning(second);
		
		//Inserting to the middle of a list is O(1) if it's a known position, since you just pass the pointer
		linkedList.insertAfter(second, third);
		
		//Inserting to the end of a list is O(n) if you don't know the tail. If you have tail property, then it's O(1);
		linkedList.insertAtEnd(new Node("endoBendo"));
		
		
		//Inserting to unknown place in the middle is O(n) 
		linkedList.insertInMiddle(new Node("middleSter"));
		linkedList.insertInMiddle(new Node("middleSter2"));

		//Traversing a linked list
		linkedList.traverse();		
		
		//Should delete banana
		linkedList.deleteFromBeginning();
		
		linkedList.traverse();
		
	}

}
