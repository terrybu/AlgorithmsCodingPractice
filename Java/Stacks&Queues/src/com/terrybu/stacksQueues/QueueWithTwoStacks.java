package com.terrybu.stacksQueues;

public class QueueWithTwoStacks {

	Stack inbox, outbox;
	
	QueueWithTwoStacks() {
		inbox = new Stack();
		outbox = new Stack();
	}
	
	void enqueue(Node node) {
		inbox.push(node);
	}
	
	Node dequeue() {
		//the very first time we run a dequeue, outbox is going to be empty. And we fill it with everything in inbox upto that point
		if (outbox.isEmpty()) {
			while (!inbox.isEmpty()) {
				Node node = inbox.pop();
				outbox.push(node);
			}
		}
		return outbox.pop();
		//now, the second time you call dequeue, there may still be nodes hanging in the outbox from that initial enqueueing. 
		//that's why we only do this inbox --> outbox transition only when we need to, when outbox runs out. 
	}
	
	void display() {
		if (!inbox.isEmpty())
			inbox.traverseFromTop();
		else
			outbox.traverseFromTop();
	}
}
