import java.util.ArrayList;
import java.util.LinkedList;
import java.util.Queue;


public class Tree {
	Node root;
	
	void preorderTraversal(Node node) { //depth first traversal
		System.out.print(node.getStringData() + " ");
		if (node.getLeft() != null)
			preorderTraversal(node.getLeft());
		if (node.getRight() != null)
			preorderTraversal(node.getRight());
	}
	
	void inorderTraversal(Node node) {
		if (node.getLeft() != null)
			inorderTraversal(node.getLeft());
		System.out.print(node.getStringData() + " ");
		if (node.getRight() != null)
			inorderTraversal(node.getRight());
	}
	
	void postorderTraversal(Node node) {
		if (node.getLeft() != null)
			postorderTraversal(node.getLeft());
		if (node.getRight() != null)
			postorderTraversal(node.getRight());
		System.out.print(node.getStringData() + " ");
	}
	
	void breadthFirstSearch(Node node) {
		Queue <Node> queue = new LinkedList<Node>();
		if (this.root == null)
			return;
		queue.clear();
		queue.add(this.root);
		while (!queue.isEmpty()) {
			Node dequeued = queue.remove();
			System.out.print(dequeued.getStringData() + " ");
			if (dequeued == node) 
				System.out.print(" < -- found match! ");
			if (dequeued.getLeft() != null) queue.add(dequeued.getLeft());
			if (dequeued.getRight() != null) queue.add(dequeued.getRight());
		}
		
	}
	
	Node findLowestCommonAncestor(Node p, Node q) {		
		//edge cases
		if (p == q)
			return p.parent;
		else if (p.parent == q.parent)
			return p.parent;
		else if (p == this.root || q == this.root)
			return this.root;
		
		Node parentP= p.parent;
		ArrayList<Node> pParentsArray = new ArrayList<Node>();
		while (parentP != this.root){
		//we are going to pick one node, and put everyone of its parents into an array
		//until it reaches the root
			pParentsArray.add(parentP);
			parentP = parentP.parent;
		}			
		//and then, we are going to look at the other node, and start traversing up its parents
		//if its parent ever is in the other parents array,
		//we return this
		Node parentQ = q.parent;
		while (parentQ != root) {
			if (pParentsArray.contains(parentQ))
				return parentQ;
			parentQ = parentQ.parent;
		}
		
		//if we never find it, then we return root
		return this.root;
	}
	
	void printAncestor(Node p, Node q) {
		Node answer = this.findLowestCommonAncestor(p, q);
		System.out.println("Lowest Common Ancestor between " + p.getStringData() + " and " + q.getStringData() + " is " + answer.getStringData());
	}
	
	void findLongestPathBetweenTwoNodesInTree() {
				
	}
	
	int findMaxElement(Node node) {
		int maxInt = node.data;
		if (node.getLeft() != null) {
			maxInt = Math.max(maxInt, findMaxElement(node.getLeft()));
		}
		if (node.getRight() != null) {
			maxInt = Math.max(maxInt, findMaxElement(node.getRight()));
		}
		return maxInt; 
	}
	
	
}
