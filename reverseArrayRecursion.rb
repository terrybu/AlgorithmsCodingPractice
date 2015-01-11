def reverseArrayRecursion(array, firstIndex, lastIndex)
	if (firstIndex >= lastIndex)
		return array
	end

	temp = array[firstIndex]
	array[firstIndex] = array[lastIndex]
	array[lastIndex] = temp
	firstIndex += 1
	lastIndex -= 1
	return reverseArrayRecursion(array, firstIndex, lastIndex)

end


arrayTest = [50, 40, 30, 20, 10, -100]
p reverseArrayRecursion(arrayTest, 0, arrayTest.length-1)