#Given a string, aaabbcbbaaa, find the first non-repeating unique character with O(n) in mind

#1 confirm problem
#2 think of examples
#3 find edge cases
#4 brainstorm
#5 outline it by hand
#6 code it out
#7 test it out 

#examples
#aaaaaaaaabcaaaaaaaa --> b
#ccccccccccdfffffffjgggg ---> d

#brainstorm --- what are the ways you could do this?
#brute force --> find all unique characters of the string, we loop through the uniqueCharArray, and if it ever appears in the original array, we go to the next one

#we can loop through the original stirng
#make a dictionary of each character
#have a counter increment as the value



def findFirstNonrepeatingCharacterBruteForce(string)
	charactersArray = string.split("")
	uniqueCharsArray = charactersArray.uniq
	for char in uniqueCharsArray
		counter = 0
		for i in 0..charactersArray.length-1
			if charactersArray[i] == char
				counter += 1
			end
		end
		if counter == 1
			return char
		end
	end
	return nil
end
###worst case scenario O^2 

testArray = [
"aaaaaabdccccc",
"dfjpasdfjpasdp",
"aaaasdfjsdapf",
"xc",
"fdajs"
]

for string in testArray
	p findFirstNonrepeatingCharacterBruteForce(string)
end

def findFirstNonrepeatingDictionary(string)
	charsArray = string.split("")
	countDict = {}
	for char in charsArray
		if countDict[char]
			countDict[char] += 1
		else
			countDict[char] = 1
		end
	end
	p countDict
	countDict.each do |key,value|
		if value == 1
			return key
		end
	end
end

p findFirstNonrepeatingDictionary("ddddaabcvzxsasdddd")