#reverse array
#Given [0,2,3,4,5], make it [5,4,3,2,0]

=begin
what are different ways of doing this?
1. you can have two counters, one looping forwards, another looping backwards
2. you can loop backwards through the input array and put them into new array and then return new array

=end

test = 5


p test 

def addOne(int)
	int = int + 1
	return int
end

p addOne(test) #ruby is 
p test

string = "test"
p string
def addString(string)
	string = string + "asdf"
	return string
end
p addString(string)
p string


testArray = [0,2,3,4,5]
def reverseArray(array)
	fi = 0
	ei = array.length - 1 
	while fi < ei
		temp = array[fi]
		array[fi] = array[ei]
		array[ei] = temp
		fi += 1
		ei -= 1
	end
	return array
end

p reverseArray(testArray)
p testArray

def reverseArrayNewArray(array)
	lastIndex = array.length-1
	newArray = []
	lastIndex.step(0, -1) do |i|
		newArray << array[i]
	end
	return newArray
end

p reverseArrayNewArray(testArray)






