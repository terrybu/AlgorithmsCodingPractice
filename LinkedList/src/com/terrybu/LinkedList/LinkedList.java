package com.terrybu.LinkedList;

public class LinkedList {
	Node rootNode; 
	
	public void traverse () {
		System.out.println("traversing ... ");
		Node node = this.rootNode;
		while (node != null) {
			//do something
			System.out.println(node.data);
			node = node.next;
		}
	}
	
	//Insert node to the beginning of a linked list is O(1)
	public void insertAtBeginning(Node newNode) {
		newNode.next = this.rootNode;
		this.rootNode = newNode;
	}
	
	//Insert node after a certain node (in the middle between two nodes) 
	public void insertAfter(Node node, Node newNode) {
		
	}
	
}

