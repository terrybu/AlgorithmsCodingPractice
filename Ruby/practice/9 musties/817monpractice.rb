
def insertionSort(array)
	for i in 1..array.length-1
		key = array[i]
		j = i -1
		while j >= 0 and array[j] > key
			#note that you are comparing the left elements to the key at every iteration of i
			#key becomes the focus to compare everything to the left to
			array[j+1] = array[j]
			j = j -1
		end
		array[j+1] = key
		#note that we go all the way until j = -1, that's when the loop stops
		#so it's not array[j] = key which doesn't make sense
		#when the J loop stops, whether it never moved because array[j] was less than key or whether it moved all the way to -1 because key was the smallest #,
		#once we exit the left loop, we always set the key again to array[j+1] = key
		#if j never moved, then it's not needed.
		#if j moved, then this is the correct key placement
	end
	return array
end

p insertionSort([2,7,0,-1,10, 3, 1000, 200, 5000])
