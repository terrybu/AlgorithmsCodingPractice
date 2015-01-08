package com.terrybu.stacksQueues;

public class Queue {

	Node head, last; //head is the first guy in the queue, last is the last guy at the end of the line
	
	Queue() {
		this.head = null;
		this.last = null;
	}
	
	void enqueue(Node node) {
		if (head == null) {
			this.head = node;
			this.last = node;
		}
		else {
			//if there's already a head there, then the new guy becomes the last
			this.last.next = node; //the previous last guy's next points to this new node 
			this.last = node; //now, our queue's new last is this new node 
		}
			
	}
	
	Node dequeue() {
		//we dequeue off the front of the line
		//but first, we make the 2nd to head, the new head
		Node nodeToDequeue = this.head;
		this.head = head.next;
		return nodeToDequeue;
	}
	
	void traverse() {
		System.out.println("traversing queue");
		Node current = this.head;
		while (current != null) {
			System.out.println(current.data);
			current = current.next; 
		}
		System.out.println("done");
	}
	
}
