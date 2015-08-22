def insertionSort(array)

	for i in 0..array.length-1
		key = array[i]
		j = i -1

		while j >= 0 and array[j] > key
			array[j+1] = array[j]
			j = j -1
		end
		array[j+1] = key
	end
	return array
end

p insertionSort([2,0,100,20,30,50,4])

