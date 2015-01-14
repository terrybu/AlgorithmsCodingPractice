
public class Node {
		Node left;
		Node right;
		int data;
		String stringData;
		
		Node() {
			left = null;
			right = null;
			data = 0; 
			stringData = null;
		}
		
		Node(int data) {
			left = null;
			right = null;
			this.data = data; 
		}
		
		Node(int data, String stringData) {
			left = null;
			right = null;
			this.data = data; 
			this.stringData = stringData;
		}
		
		//can be implemented better recursively on the tree - see bstree
		public boolean add(Node newNode) {
			if (this.data == newNode.data) {
				System.out.println("found duplicate");
				return false;
			}
			
			if (newNode.data < this.data){
				if (this.left == null) {
					this.left = newNode;
					return true;
				}
				else 
					this.left.add(newNode);
			}
			else if (newNode.data > this.data) {
				if (this.right == null) {
					this.right = newNode;
					return true;
				}
				else
					this.right.add(newNode);
			}
			return false; 
		}
		
		//this delete implementation is odd in that it doesn't check if root is the one to delete
		//also, it doesn't reorder nodes that have children  
		//**only address case 1 where a node has no children
		public boolean delete(Node node) {
			if (this.left == node) {
				this.left = null;
				return true;
			}
			else if (this.left != null) {
				this.left.delete(node);
			}
			
			if (this.right == node) {
				this.right = null;
				return true;
			}
			else if (this.right != null) {
				this.right.delete(node);
			}

			return false;			
		}


	
}
