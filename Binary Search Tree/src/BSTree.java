import java.util.LinkedList;
import java.util.Queue;


public class BSTree {
	Node root;
	
	//newer
	void insertRecursive(Node root, int data) {
		if (root == null)
			this.root = new Node(data);
		if (data > root.data)
			insertRecursive(root.left, data);
		else if (data < root.data)
			insertRecursive(root.right, data);
	}
	
	//newer
	//addresses all cases 1) node has no children 2) node has one children 3) node has two children
	
	Node deleteRecursive(Node root, int data) {
		//edge case
		if (root == null)
			return null;
		else if (data < root.data) 
			root.left = deleteRecursive(root.left, data);
		else if (data > root.data)
			root.right = deleteRecursive(root.right, data);
		else { // data = root.data - meaning that we found it			
			//Case 1: node has no child easy			
			if (root.left == null && root.right == null)
				root = null; 
			//Case 2: node has one child
			else if (root.left == null)
				root = root.right;
				//root becomes the right child
			else if (root.right == null)
				root = root.left; 
			//Case 3: node has two children
			else {
				//find the minimum value from the right subtree
				//*you can also do max value from the left subtree - doesn't matter
				Node temp = findNodeWithMinimumValue(root.right);
				//copy it to the root
				root.data = temp.data;
				//then delete the node we found with min value above
				root.right = deleteRecursive(root.right, temp.data);
				//what this will do, is run case 1/2/3 deletion depending on the right child
			}
		}
		return root; 
	}
	
	Node findNodeWithMinimumValue(Node root) {
		while (root.left != null) 
			root = root.left;
		return root;
		//this works because whatever is positioned at the leftmost position is the smallest in the subtree
	}
	
	
	
	
	//older
	void insert(Node newNode) {
		if (root == null)
			root = newNode;
		
		root.add(newNode);
		
	}
	
	void delete(Node node) {
		if (node == root)
			this.root = null;
		
		root.delete(node);
	}
	

	
	void depthFirstTraversal(Node node) {
		System.out.println(node.data);		
		if (node.left != null)
			depthFirstTraversal(node.left);
		if (node.right != null)
			depthFirstTraversal(node.right);
	}
	
	void breadthFirstTraversal()  {
		Queue<Node> queue = new LinkedList<Node>();
		queue.add(this.root);
		while (!queue.isEmpty()) {
			Node dequeued = queue.remove();
			System.out.println(dequeued.data);
			if (dequeued.left != null)
				queue.add(dequeued.left);
			if (dequeued.right != null)
				queue.add(dequeued.right);
		}
	}
	
	
}
