def mergeSort(array)
	if array.length == 1
		return array
	end

	midpoint = (array.length/2).round
	left = array[0...midpoint]
	right = array[midpoint..-1]
	mergeSort(left)
	mergeSort(right)
	merge(array, left, right)
end

def merge(original, left, right)

	#we are going to pass in the reference to the original array and make changes directly
	i = iLeft = iRight = 0
	#i represents leftarray index counter
	#j represents rightarray index counter
	#k represents our original array index counter

	while i < original.length
		if iLeft >= left.length
			original[i] = right[iRight]
			iRight += 1
		elsif iRight >= right.length
			original[i] = left[iLeft]
			iLeft += 1
		elsif left[iLeft] <= right[iRight]
			original[i] = left[iLeft]
			iLeft += 1
		elsif right[iRight] < left[iLeft]
			original[i] = right[iRight]
			iRight += 1
		end
		i += 1
	end
end

testArray = [0, -1, 100, 50, 200, 30, 10, 4, 2, 8, 3]
mergeSort(testArray)
p testArray