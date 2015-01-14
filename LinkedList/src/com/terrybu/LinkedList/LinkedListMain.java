package com.terrybu.LinkedList;

public class LinkedListMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		LinkedList linkedList = new LinkedList();
		
		Node firstNode = new Node("apple");		
		linkedList.head = firstNode;
		
		Node second = new Node("banana");
		Node third = new Node("blueberries");
		
		//Inserting to the beginning of a linkedlist is O(1)
		linkedList.insertAtBeginning(second);
		
		//Inserting to the middle of a list is O(1) if it's a known position, since you just pass the pointer
		linkedList.insertAfter(second, third);
		
//		//Traversing a linked list
		linkedList.traverse();		
		
		System.out.println(linkedList.findIfCircularLinkedList());
		
//		//Inserting to the end of a list is O(n) if you don't know the tail. If you have tail property, then it's O(1);
//		linkedList.insertAtEnd(new Node("endObject"));
//		
//		
//		//Inserting to unknown place in the middle is O(n) 
//		linkedList.insertInMiddle(new Node("middleSter"));
//		linkedList.insertInMiddle(new Node("middleSter2"));
//
//
//		Node duplicateNode = new Node("blueberries");
//		linkedList.insertAtEnd(duplicateNode);
//		linkedList.traverse();
//
//		System.out.println("delete deuplicate blueberry");
//		linkedList.deleteDuplicates(third);
//		linkedList.traverse();
//		
//		System.out.println("delete blueberry in the middle");
//		linkedList.deleteNode(third);
//		linkedList.traverse();
//
//		System.out.println("delete from end");
//		linkedList.deleteFromEnd();
//		linkedList.traverse();
//		
//		
//		linkedList.reverseList();
//		linkedList.traverse();
//		
//		System.out.println(linkedList.nthToLastElement(1).data);
//		System.out.println(linkedList.nthToLastElement(2).data);
//		System.out.println(linkedList.nthToLastElement(3).data);
		
		
		
	}

}
