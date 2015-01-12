def mergeSortIterativeTest(array)
	if array.length <= 1
		return array
	end

	midpoint = array.length/2
	leftArray = array[0...midpoint]
	rightArray = array[midpoint...array.length]

	mergeSortIterativeTest(leftArray)
	mergeSortIterativeTest(rightArray)

	mergeIteratively(array, leftArray, rightArray)
end


def mergeIteratively(original, left, right) 
	iLeft = iRight = i = 0 

	while i < original.length
		if iLeft >= left.length
			original[i] = right[iRight]
			iRight += 1
		elsif iRight >= right.length
			original[i] = left[iLeft]
			iLeft += 1
		elsif iLeft < left.length && left[iLeft] <= right[iRight]
			original[i] = left[iLeft]
			iLeft += 1
		elsif iRight < right.length && right[iRight] <= left[iLeft]
			original[i] = right[iRight]
			iRight += 1
		end
		i += 1
	end
end

array = [-2,100,5,1000,3]
mergeSortIterativeTest(array)
p array