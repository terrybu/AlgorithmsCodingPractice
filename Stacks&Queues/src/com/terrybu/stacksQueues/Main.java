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
		
		
		
		Queue queue = new Queue();
		Node a = new Node(10);
		Node b = new Node(20);
		Node c = new Node(30);
		Node d = new Node(40);
		queue.enqueue(a);
		queue.enqueue(b);
		queue.enqueue(c);
		queue.enqueue(d);
		queue.traverse();//10 20 30 40
		
		System.out.println(queue.dequeue().data); //should dequeue front of line 10
		queue.traverse();
	}

}
