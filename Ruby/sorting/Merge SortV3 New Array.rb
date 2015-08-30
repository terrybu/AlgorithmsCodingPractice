	#Version 3 is a way to not manipulate the original array 
	#only caveat with going this way instead of merge(original, left, right)
	#is that you allocate an empty array at every stack level
	#which might be memory expensive depending on how many numbers you have
	#it just makes the syntax a little more concise

def mergeSort(arr)
	if arr.length == 1
		return arr
	end

	midpoint = arr.length/2.round
	left = arr[0...midpoint]
	right = arr[midpoint..-1]
	left = mergeSort(left) #[4,6]
	right = mergeSort(right) #[8, 2]

	return merge(left, right)
end


def merge(left, right) 
	#this function takes two sorted arrays or just two numbers, and returns this new array
	i = j = 0
	ansArray = []
	while i < left.length && j < right.length
		if left[i] <= right[j]
			ansArray << left[i] 
			i += 1
		else
			ansArray << right[j] 
			j += 1
		end
	end
	while i < left.length
		ansArray << left[i]
		i += 1
	end
	while j < right.length
		ansArray << right[j]
		j += 1
	end
	return ansArray 
end


testArray = [0, -1, 100, 50, 200, 30, 10, 4, 2, 8, 3]
p mergeSort(testArray)