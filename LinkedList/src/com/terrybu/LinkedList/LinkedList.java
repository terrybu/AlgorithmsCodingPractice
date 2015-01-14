package com.terrybu.LinkedList;

import java.util.HashMap;

public class LinkedList {
	Node head; 
	
	public LinkedList() {
		super();
		this.head = null;
	}

	public void traverse () {
		System.out.println("traversing ... ");
		Node node = head;
		while (node != null) {
			//do something
			System.out.println(node.data);
			node = node.next;
		}
		System.out.println("Length: " + length());
	}
	
	public long length() {
		long counter = 0;
		Node node = head;
		while (node != null) {
			//do something
			counter++;
			node = node.next;
		}
		return counter;
	}
	
	//Insert node to the beginning of a linked list is O(1)
	public void insertAtBeginning(Node newNode) {
		newNode.next = head;
		head = newNode;
	}
	
	//Insert node after a certain node (in the middle between two nodes) is O(1) in a situation like this where you know the previous node
	//because all you gotta do is switch the next pointers as shown below.
	public void insertAfter(Node previousNode, Node newNode) {
		newNode.next = previousNode.next; //the newNode's next becomes the previousNode's old next
		previousNode.next = newNode; //the previousNode's new next is now the new Node
	}
	
	//otherwise, you gotta loop through and find "middle" - whether you find some data to search, or find midpoint, this loop causes O(n)
	public void insertInMiddle(Node newNode) {
		long midpoint = length()/2;
		Node node = head;
		for (int i=0; i < midpoint-1; i++) {
			node = node.next;
		}
		newNode.next = node.next;
		node.next = newNode;
	}
		
	public void insertAtEnd(Node newNode) {
		Node node = head;
		while (node != null) { 
			//if we don't know the tail, we need a loop to find the end of the list --> O(n) for finding end.
			if (node.next == null) {
				node.next = newNode;
				return;
			}
			else
				node = node.next;
		}
	}
	
	public void deleteFromBeginning() { //O(1) 
		head = head.next;
	}
	
	public void deleteFromEnd() { //O(n) unless you keep track of tail
		Node current = this.head;
		Node previous = null;
		while (current != null) {
			previous = current; 
			current = current.next;
			if (current.next == null) { //we hit tail
				previous.next = null;
				return;
			}
		}
	}
	
	public void deleteDuplicates(Node node) {
		HashMap<String, Boolean> table = new HashMap<String, Boolean>();
		Node previous = null;
		while (node != null) {
			if (table.containsKey(node.data)) {
				//we found a duplicate
				previous.next = node.next;
			}
			else {
				table.put(node.data, true);
			}
			previous = node;
			node = node.next;
		}
	}
	
	public void deleteNode(Node node) { //given access to a node, delete a node in middle of list
		if (node == null)
			return;
		else if (node.next == null) //we are at the tail. 
			//traverse to the end and delete it
			this.deleteFromEnd();
		else {
			Node next = node.next; //a b c d - next is c, trying to delete b
			node.data = next.data; //a c c d 
			node.next = next.next; //a c d - jump a pointer from first c to d - deallocate second c
		}
	}
	
	public void reverseList() {
		Node current, prev, next;
		
		current = this.head;
		prev = null;
		while (current != null) {
			next = current.next;
			current.next = prev;
			prev = current;
			current = next;
		}
		this.head = prev;
	}
	
	Node nthToLastElement(int n) {
		if (this.head == null)
			return null;
		int length = 1;
		Node current = this.head;
		while (current.next != null) {
			length += 1;
			current = current.next;
		}
		//now length is count of all the nodes in the list
		if (length <= n)
			return null;
		
		int i = 1;
		current = this.head;
		while (i < length-n) {
			current = current.next;
			i = i + 1;
		}
		return current;
	}
	
	boolean findIfCircularLinkedList() {
		//O(N)
		Node fastPointer, slowPointer;
		//if fastPointer reaches null, then it's not circular
		//if fastPointer ever reaches slowPointer or its next equals slowPointer, its cyclical
		slowPointer = this.head;
		fastPointer = this.head.next;
		
		if (slowPointer == null || fastPointer == null)
			return false; 
		
		if (fastPointer == null || fastPointer.next == null)
			return false;
		
		while (fastPointer != null) {
			if (fastPointer == slowPointer || fastPointer.next == slowPointer)
				return true;
			slowPointer = slowPointer.next;
			fastPointer = fastPointer.next.next;
		}
		
		return false; 
	}
	
}

