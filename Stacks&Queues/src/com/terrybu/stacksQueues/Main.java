package com.terrybu.stacksQueues;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Stack stack = new Stack();
		Node aNode = new Node(1);
		Node bNode = new Node(2);
		Node cNode = new Node(3);
		stack.push(aNode);
		stack.push(bNode);
		stack.push(cNode);
		stack.traverseFromTop();
		System.out.println("Getting popped now: " + stack.pop().data);
		stack.pop();
		//now we should only have aNode or 1 at bottom
		stack.traverseFromTop();
	}

}
