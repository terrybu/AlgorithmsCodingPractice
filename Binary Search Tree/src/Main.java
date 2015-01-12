
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
		
		binarySearchTree.delete(d);
				
		binarySearchTree.depthFirstTraversal(binarySearchTree.root);

	}

}
