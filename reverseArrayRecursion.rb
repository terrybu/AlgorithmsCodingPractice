def reverseArrayRecursion(array, index)  #so much easier than below
	if index == 0
		return [array[index]]
	end

	element = [array[index]]
	return element + (reverseArrayRecursion(array, index-1))

end

arrayTest2 = [1,2,3,4,5]
p reverseArrayRecursion(arrayTest2, arrayTest2.length-1)



#using 3 arguments
def reverseArrayRecursionLongerVersion(array, firstIndex, lastIndex)
	temp = array[firstIndex]
	array[firstIndex] = array[lastIndex]
	array[lastIndex] = temp
	firstIndex = firstIndex + 1
	lastIndex = lastIndex - 1
	if (firstIndex < lastIndex)
		reverseArrayRecursionLongerVersion(array, firstIndex, lastIndex)
	else
		return array
	end
end

arrayTest1 = [1,2,3,4,5]
p reverseArrayRecursionLongerVersion(arrayTest1, 0, arrayTest1.count-1)

