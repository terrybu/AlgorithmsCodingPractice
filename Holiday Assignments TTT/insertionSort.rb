def insertionSort(array)
	#outside loop iterates over the array starting from index 1,
	#and the inside loop within that outside loop will check value at index 1 against
	#all the values that come before it and place it in its right position

	#outside loop iterates over array with i 
	#inside loop iterates over every index less than i and compares it with value at i

	for i in 1..array.count-1
		key = array[i]
		j = i - 1
		while j >= 0 && array[j] > key 
			array[j+1] = array[j] 
			j = j -1
		end
		array[j+1] = key 
	end
	return array
end

p insertionSort([3,-10, 1,5,24,6,2,0])
