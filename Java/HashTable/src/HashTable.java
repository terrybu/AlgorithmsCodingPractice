public class HashTable {

	HashEntry[] bucketsArray; 
	//holds key-value pairs (hash entries)
	
	HashTable() {
		this.bucketsArray = new HashEntry[300000000]; //
		for (int i = 0; i < bucketsArray.length; i++) {
			bucketsArray[i] = null;
		}
	}
	
	public int getValueFor(String key) {
		int hash = hashFunction(key);
		HashEntry entry = this.bucketsArray[hash];
		return entry.value;
	}
	
	public void putValueFor(String key, int value) {
		int hash = hashFunction(key);
		HashEntry entry = new HashEntry(key, value);		
		this.bucketsArray[hash] = entry;
	}
	
	private int hashFunction(String key) {
		//some hash function that returns a unique number to be used as index for buckets array,
		//aka HASH or hash code or hash value
		//when the same key is passed to this function, it should return same hash everytime
		return key.hashCode();
		//String has its own implementation of hash code 
		//so just using it instead of implementing my own hash function here
		//seems to use character value ... returns really large numbers though 
	}
	
}
