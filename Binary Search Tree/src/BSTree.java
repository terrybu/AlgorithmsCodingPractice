
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
	
	
}
