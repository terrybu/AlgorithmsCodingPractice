def mergeSort(array)
	if array.length <= 1
		return array
	end

	midpoint = array.length/2 #if length is 5, then midpoint becomes 2.5. Better to floor/round it and make it 2
	leftArray = array[0...midpoint] #if length was 5, then this is [0, 1]
	rightArray = array[midpoint...array.length] #[2,3,4]

	mergeSort(leftArray)
	mergeSort(rightArray)

	mergeIntoOriginal(array, leftArray, rightArray)
end


def mergeIntoOriginal(original, left, right) 
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
mergeSort(array)
p array