package com.terrybu.LinkedList;

public class LinkedList {
	Node head; 
	
	public LinkedList() {
		super();
		this.head = null;
	}

	public void traverse () {
		System.out.println("traversing ... ");
		Node node = this.head;
		while (node != null) {
			//do something
			System.out.println(node.data);
			node = node.next;
		}
		System.out.println("Length: " + length());
	}
	
	public long length() {
		long counter = 0;
		Node node = this.head;
		while (node != null) {
			//do something
			counter++;
			node = node.next;
		}
		return counter;
	}
	
	//Insert node to the beginning of a linked list is O(1)
	public void insertAtBeginning(Node newNode) {
		newNode.next = this.head;
		this.head = newNode;
	}
	
	//Insert node after a certain node (in the middle between two nodes) is O(1) in a situation like this where you know the previous node
	//because all you gotta do is switch the next pointers as shown below.
	public void insertAfter(Node previousNode, Node newNode) {
		newNode.next = previousNode.next; //the newNode's next becomes the previousNode's old next
		previousNode.next = newNode; //the previousNode's new next is now the new Node
	}
	
	//otherwise, you gotta loop through and find "middle" - whether you find some data to search, or find midpoint, this loop causes O(n)
	public void insertInMiddle(Node newNode) {
		long midpoint = this.length()/2;
		Node node = this.head;
		for (int i=0; i < midpoint-1; i++) {
			node = node.next;
		}
		newNode.next = node.next;
		node.next = newNode;
	}
		
	public void insertAtEnd(Node newNode) {
		Node node = this.head;
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
		Node nodeToDelete = this.head;
		this.head = this.head.next;
		nodeToDelete = null;
	}
	
	
	public void reverseList(LinkedList linkedList) {
		
	}
	
}

