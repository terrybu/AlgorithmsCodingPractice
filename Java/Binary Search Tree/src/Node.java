
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
		
		Node(String stringData) {
			left = null;
			right = null;
			this.data = 0;
			this.stringData = stringData; 
		}
		
		Node(int data, String stringData) {
			left = null;
			right = null;
			this.data = data; 
			this.stringData = stringData;
		}
		
	
}
