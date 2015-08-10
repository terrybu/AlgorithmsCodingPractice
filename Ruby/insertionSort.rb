def insertionSort(array)


	for i in 1..array.length-1

		key = array[i]
		j = i -1

		while j >= 0 && array[j] > key
			array[j+1] = array[j]
			j = j -1
		end
		array[j+1] = key
	end

end

array = [100,500,200,300]
insertionSort(array)
p array
