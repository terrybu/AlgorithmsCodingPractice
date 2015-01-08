def reverseArrayRecursion(array, index)  
#easier syntax than below but this one has its quirks. read below
#also Ruby syntax is what allows this to be so simple
#in other languages, concatenating two arrays is not that easy

	if index == 0
		return [array[index]]
	end

	element = [array[index]]
	return element + (reverseArrayRecursion(array, index-1))

	#very interesting. this function creates an entirely new array different from the one you pass as a parameter. So the array that gets passed in doesn't change at all. 
	#so it's broken in a way 
end

arrayTest = [1,2,3,4,5]
p reverseArrayRecursion(arrayTest, arrayTest.length-1)


#using 3 arguments, no temp array
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

	#this function most definitely changes the array passed as the argument
end

p reverseArrayRecursionLongerVersion(arrayTest, 0, arrayTest.length-1)