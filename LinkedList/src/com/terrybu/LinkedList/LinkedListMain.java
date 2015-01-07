package com.terrybu.LinkedList;

public class LinkedListMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		LinkedList linkedList = new LinkedList();
		
		Node firstNode = new Node("apple");		
		linkedList.rootNode = firstNode;
		
		//Inserting something to the beginning of a linkedlist is O(1)
		linkedList.insertAtBeginning(new Node("banana"));
		
		
		
		
		
		
		
		//Traversing a linked list
		linkedList.traverse();
		
		
		
		
		
	}

}
