
public class Node {
		Node left;
		Node right;
		int key;
		String data;
		
		Node() {
			left = null;
			right = null;
			key = 0; 
			data = null;
		}
		
		Node(int key) {
			left = null;
			right = null;
			this.key = key; 
		}
		
		Node(int key, String data) {
			left = null;
			right = null;
			this.key = key; 
			this.data = data;
		}
		
		public boolean add(Node newNode) {
			if (this.key == newNode.key) {
				System.out.println("found duplicate");
				return false;
			}
			
			if (newNode.key < this.key){
				if (this.left == null) {
					this.left = newNode;
					return true;
				}
				else 
					this.left.add(newNode);
			}
			else if (newNode.key > this.key) {
				if (this.right == null) {
					this.right = newNode;
					return true;
				}
				else
					this.right.add(newNode);
			}
			return false; 
		}
		
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
