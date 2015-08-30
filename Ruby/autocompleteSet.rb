

string = "badcar"
array = ["bad", "car"]

def returnOurNewString(string, array)
	for i in 1..string.length-1
		substring = string[0...i]
		if array.include?(substring)
			endString = string[i..-1]
			if array.include?(endString)
				return "#{substring} #{endString}"
			end
		end
	end

	return nil
end

p returnOurNewString(string, array)

newStr = "badcarpizzaduck"
newArray = ["bad", "car", "pizza", "duck"]


def recursiveVersion(string, array)
	#base case
	if string.length <= 1
		return ""
	end
	
	for i in 1..string.length-1
		substring = string[0...i]
		if array.include?(substring)
			result = "#{substring} " + recursiveVersion(string[i..-1], array) 
		end
	end
	if result == nil
		return nil
	end
	return result 
end

p recursiveVersion(newStr, newArray) 