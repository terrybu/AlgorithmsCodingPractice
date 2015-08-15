def bubbleSort(array)
	#the point of bubble sort is that we are going to keep iterating over this array and check if an element is greater than the one on the right. 
	#If yes, we "swap". 
	#Once you find that an element is less than the one on the right, we go to the next element, and we make sure we hit every element this way
	#but at the end of this laborious work, we do it AGAIN if a "swap" has been made
	#we keep doing this until a "Swap" is not made at all during an iteration

	#the most crucial point of a bubble sort is a swappedBoolean
	#a loop that keeps going while the swappedBoolean  is true
	#the swappedBoolean  turns to false as soon as our iteration starts
	#when the swappedBoolean  never gets changed by the end of the iteration,
	#we know that the sorting has ended so we return the array

	swappedBoolean = true

	while (swappedBoolean == true)
		swappedBoolean = false
		for i in 0...array.length-1
			if array[i] > array[i+1]
				temp = array[i+1]
				array[i+1] = array[i]
				array[i] = temp
				swappedBoolean = true
			end
		end
	end

	#swappedBoolean never turned true, meaning that no more sorting is necessary 
	return array
end

p bubbleSort([0,-2, 1,2,33,5,13,12,51,3,122,1])