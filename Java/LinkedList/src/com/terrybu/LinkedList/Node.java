package com.terrybu.LinkedList;

public class Node {
	String data;
	Node next; 
	int value; 
	
	public Node(String data) {
		super();
		this.data = data;
	}
	
	public Node (int value) {
		this.value = value; 
	}
	
	public Node (String data, int value) {
		this.data = data;
		this.value = value; 
	}
	
}


