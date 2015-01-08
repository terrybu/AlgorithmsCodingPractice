package com.terrybu.passbyvalue;

public class Main {

	private String name;
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int x = 10;
		System.out.println(changeInt(x)); //prints out 5
		//passing by value means that primitives are passed by copy.
		//Even though the above function looks like it will change the argument itself, it won't. It will just change a "copy" of x.
		System.out.println(x); //prints out 10 
		
		//Now objects are different, because object variables are pointers.
		Main main = new Main();
		main.name = "name";
		System.out.println(main.name); //output name
		changeObjectName(main);
		//the variable pointer "main" is copied into the function, not the object itself
		//the function now has its own pointer to the object, and whatever we do to the object, the changes will be reflected
		
		System.out.println(main.name); //output changedName!
	}
	
	public static int changeInt(int integer) {
		integer = 5;
		return integer;
	}
	
	public static void changeObjectName(Main object) {
		object.name = "changedName";
	}

}
