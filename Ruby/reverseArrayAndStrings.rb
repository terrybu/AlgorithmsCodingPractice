def reverseString(string)
	#by swapping
	lastIndex = string.length-1
	for i in 0..(string.length/2-1)
		lastChar = string[lastIndex-i]
		firstChar = string[i]
		string[lastIndex-i] = firstChar
		string[i] = lastChar
	end
	return string
end

def reverseStringUsingNewString(string) #easier, similar to Java syntax 
	newString = ""
	(string.length-1).step(0,-1) do |i|
		newString << string[i]
	end
	return newString
end
#in Ruby, there's two step functions. One that deals with Range objects and the other Numeric
#Range version --> (0..100).step(10) --> means iterate over 0, 10, 20 ... 100
#numeric version --> 10.step(0, -1) --> means 10, 9, 8 ... 0. First arg is limit, second is increment


def reverseArray(array)
	for i in 0..array.length/2-1
		temp = array[i]
		array[i] = array[array.length-1-i]
		array[array.length-1-i] = temp
	end
	return array
end

def reverseArrayUsingNewArray(array) #easier
	newArray = []

	(array.length-1).step(0,-1) do |i|
		newArray << array[i]
	end

	return newArray
end

p reverseString("terry bu")
p reverseStringUsingNewString("terry bu")
p reverseArray([100,200,300,400,50000])
p reverseArrayUsingNewArray([100,200,300,400,50000])

#remember not to name your functions just "reverse" - seems to conflict with already defined methods called reverse in standard Ruby? - was causing me headaches