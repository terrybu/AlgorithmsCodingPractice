def reverseStringRecursion(string, index)
	if index == 0
		return string[index]
	end

	character = string[index]
	return character + reverseStringRecursion(string, index-1)
end

string = "terry bu"
p reverseStringRecursion(string, string.length-1)