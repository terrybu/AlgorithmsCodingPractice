
public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		BSTree binarySearchTree = new BSTree();
		
		Node a = new Node(5, "A");
		binarySearchTree.root = a;
		
		Node b = new Node(4, "B");
		binarySearchTree.insert(b);
		
		Node c = new Node(8, "C");
		binarySearchTree.insert(c);
			
		Node d = new Node(12, "D");
		binarySearchTree.insert(d);
		
		Node e = new Node(10, "E");
		binarySearchTree.insert(e);
		
		Node f = new Node(16, "F");
		binarySearchTree.insert(f);
		
		Node g = new Node(3, "G");
		binarySearchTree.insert(g);
		
		
		binarySearchTree.depthFirstTraversal(binarySearchTree.root);
		System.out.println("");
		binarySearchTree.breadthFirstTraversal();
	}

}
