package com.terrybu.stacksQueues;



public class Stack {
	Node top;
	
	public Stack() {
		this.top = null; 
	}
	
	Node pop() {
		//popping off the top means pop it off and return it,
		if (top != null) {
			Node nodeToPop = top;  
			top = top.next;
			return nodeToPop;
		}
		return null; 
	}
	
	void push(Node element) {
		element.next = top; 
		this.top = element; 
	}
	
	void traverseFromTop() {
		Node node = top;
		System.out.println("**************************");
		while (node != null) {
			System.out.println(node.data);
			node = node.next;
		}
		System.out.println("**************************");
	}
	
	Boolean isEmpty() {
		return (this.top == null);
	}
	
}
