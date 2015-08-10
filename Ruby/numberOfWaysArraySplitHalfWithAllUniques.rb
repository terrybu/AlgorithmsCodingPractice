def findUniqueHalfCombinations(array)
	result = 0
	k = 0

	while k < array.length-1
		leftArray = array[0...k]
		rightArray = array[k..array.length-1]

		if leftArray.uniq.sort == rightArray.uniq.sort
			result += 1
		end

		k += 1
	end

	return result
end


testArray = [2,1,1,4,1,1,4,2]
testArray2 = [1]
testArray3 = [5,1,5,1,5,1]

p findUniqueHalfCombinations(testArray)
p findUniqueHalfCombinations(testArray2)
p findUniqueHalfCombinations(testArray3)

p "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"

#I like this version better 8/1/2015
def findUniqueHalfCombinations2(array)
	count = 0
	for k in 1...array.length-1
		if array[0...k].uniq.sort == array[k...array.length].uniq.sort
			count +=1
		end
	end
	return count
end

p findUniqueHalfCombinations2(testArray)
p findUniqueHalfCombinations2(testArray2)
p findUniqueHalfCombinations2(testArray3)