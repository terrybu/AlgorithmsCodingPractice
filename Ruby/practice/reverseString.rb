string = "canyoureversethis"

#brainstorm
#1) two counters meet at middle approach
#2) new string append approach
#check for edge cases
#test your code

def reverseString(string)
	if string.length == 0 
		return ""
	end
	first = 0
	last = string.length-1
	while first < last
		temp = string[first]
		string[first] = string[last]
		string[last] = temp
		first += 1
		last -= 1
	end
	return string
end

p reverseString(string)
p reverseString("")