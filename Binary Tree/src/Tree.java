
public class Tree {
	Node root;
	
	void preorderTraversal(Node node) {
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
	
}
