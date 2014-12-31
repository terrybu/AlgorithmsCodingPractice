array = [1,2,3,4,5]



#using 3 arguments
def reverseArray(array, firstIndex, lastIndex)
	temp = array[firstIndex]
	array[firstIndex] = array[lastIndex]
	array[lastIndex] = temp
	firstIndex = firstIndex + 1
	lastIndex = lastIndex - 1
	if (firstIndex < lastIndex)
		reverseArray(array, firstIndex, lastIndex)
	else
		return array
	end
end
#I realized that you can't do this without 3 arguments because you have to do recursion, and then you need those variables to persist


print reverseArray(array, 0, array.count-1)