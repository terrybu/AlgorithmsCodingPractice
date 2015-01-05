def findLongestRepeatingSubstring(string)
	#when banana is passed, it should return ana

	#first of all, we need way to find all the substrings of this string
	#ba, ban, banan, an, ana, anan, anana, nan, nana, an, ana, na
	#what is a substring?
	#a substring is a string that spans more than or equal to 2 characters within the entire string

	arrayOfSubstrings = findAllSubstrings(string)
	arrayOfDuplicateSubstrings = findAllDuplicates(arrayOfSubstrings)
	if (!arrayOfDuplicateSubstrings.empty?)
		return findLongestString(arrayOfDuplicateSubstrings)
	else
		return nil
	end
end

def findAllSubstrings(string)
	resultArray = []
	for i in 0...string.length
		letter = string[i]

		j = i + 1
		for endIndex in j...string.length
			resultArray << string[i..endIndex]
		end
	end
	return resultArray;
end

def findAllDuplicates(array)
	h = Hash.new()
	for element in array
		if h[element]
			h[element] = h[element] + 1
		else
			h[element] = 1
		end
	end
	resultArray = []
	h.keys.sort.each do |key|
		if h[key] > 1
			resultArray << key
		end
	end
	return resultArray
end

def findLongestString(arrayOfStrings)
	longestStringLength = 0
	longestString = ""
	for i in 0...arrayOfStrings.count
		word = arrayOfStrings[i]
		if word.length > longestStringLength
			longestStringLength = word.length
			longestString = word
		end
	end
	return longestString
end


p findLongestRepeatingSubstring("banana")