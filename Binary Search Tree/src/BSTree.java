import java.util.LinkedList;
import java.util.Queue;


public class BSTree {
	Node root;
	
	void insert(Node newNode) {
		if (root == null)
			this.root = newNode;
		
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
