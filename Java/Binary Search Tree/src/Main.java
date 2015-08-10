
public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		BSTree binarySearchTree = new BSTree();
		Node a = new Node(5, "A");
		binarySearchTree.root = a;
		
		binarySearchTree.insert(a, 4, "B");
		binarySearchTree.insert(a, 8, "C");
		binarySearchTree.insert(a, 12, "D");
		binarySearchTree.insert(a, 6, "E");
		binarySearchTree.insert(a, 16, "F");
		binarySearchTree.insert(a, 20, "G");
			
		binarySearchTree.depthFirstTraversal(binarySearchTree.root);

		binarySearchTree.delete(binarySearchTree.root, 16);
		System.out.println("");
		System.out.println("recursive");
		binarySearchTree.depthFirstTraversal(binarySearchTree.root);
	}

}
