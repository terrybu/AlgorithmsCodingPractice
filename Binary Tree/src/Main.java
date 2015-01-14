
public class Main {
	//http://en.wikibooks.org/wiki/A-level_Computing/AQA/Problem_Solving,_Programming,_Operating_Systems,_Databases_and_Networking/Programming_Concepts/Tree_traversal_algorithms_for_a_binary_tree
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		//unordered binary tree
		Node a = new Node(null, null, "A", 1);
		Node b = new Node(null, null, "B", 2);
		Node c = new Node(null, null, "C", 3);		
		Node d = new Node(null, null, "D", 4);
		Node e = new Node(null, null, "E", 5);
		Node f = new Node(null, null, "F", 6);
		Node g = new Node(null, null, "G", 7);
		Node i = new Node(null, null, "I", 8);
		Node h = new Node(null, null, "H", 9);
		
		f.setLeft(b);
		f.setRight(g);
		b.setLeft(a);
		b.setRight(d);
		b.parent = f;
		a.parent = b; 
		c.parent = d;
		d.setLeft(c);
		d.setRight(e);
		d.parent = b;
		e.parent = d;
		g.setRight(i);
		g.parent = f;
		i.setLeft(h);
		i.parent =g;
		h.parent = i;

		Tree binaryTree = new Tree();
		binaryTree.root = f;
		
		binaryTree.preorderTraversal(f);
		System.out.println("");
		binaryTree.inorderTraversal(f);
		System.out.println("");
		binaryTree.postorderTraversal(f);
		System.out.println("");
		binaryTree.breadthFirstSearch(g);
		System.out.println("");

    	binaryTree.printAncestor(b, g);
    	binaryTree.printAncestor(a, h);
    	binaryTree.printAncestor(a, e);
    	binaryTree.printAncestor(i, h);
    	
    	System.out.println(binaryTree.findMaxElement(binaryTree.root));
	}

}
