package com.terrybu.stacksQueues;



public class Stack {
	Node top;
	
	public Stack() {
		this.top = null; 
	}
	
	Node pop() {
		//popping off the top means pop it off and return it,
		Node nodeToPop = top;  
		top = top.next;
		return nodeToPop;
	}
	
	void push(Node element) {
		if (top == null) {
			this.top = element;
		}
		else {
			Node previousTop = top; 
			this.top = element; 
			this.top.next = previousTop; 
		}
	}
	
	void traverseFromTop() {
		Node node = top;
		System.out.println("top of stack: " + top.data);
		System.out.println("**************************");
		while (node != null) {
			System.out.println(node.data);
			node = node.next;
		}
		System.out.println("**************************");

	}
	
	
}
