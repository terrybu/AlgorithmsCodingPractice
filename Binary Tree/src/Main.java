
public class Main {
	//http://en.wikibooks.org/wiki/A-level_Computing/AQA/Problem_Solving,_Programming,_Operating_Systems,_Databases_and_Networking/Programming_Concepts/Tree_traversal_algorithms_for_a_binary_tree
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Node a = new Node(null, null, "A");
		Node b = new Node(null, null, "B");
		Node c = new Node(null, null, "C");		
		Node d = new Node(null, null, "D");
		Node e = new Node(null, null, "E");
		Node f = new Node(null, null, "F");
		Node g = new Node(null, null, "G");
		Node i = new Node(null, null, "I");
		Node h = new Node(null, null, "H");
		
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

    	binaryTree.printAncestor(b, g);
    	binaryTree.printAncestor(a, h);
    	binaryTree.printAncestor(a, e);
    	binaryTree.printAncestor(i, h);
	}

}
