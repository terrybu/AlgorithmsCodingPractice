public class Node {
	private Node left;
	private Node right;
	private String stringData;
	public Node parent; 
	
	public Node getLeft() {
		return left;
	}

	public void setLeft(Node left) {
		this.left = left;
	}

	public Node getRight() {
		return right;
	}

	public void setRight(Node right) {
		this.right = right;
	}

	public String getStringData() {
		return stringData;
	}

	public void setStringData(String stringData) {
		this.stringData = stringData;
	}

	public Node(Node left, Node right, String string) {
		this.left = left;
		this.right = right;
		this.stringData = string;
	}
	
	public Node() {
		this.left = null;
		this.right = null;
		this.stringData = null;
		this.parent = null;
	}
	
}
