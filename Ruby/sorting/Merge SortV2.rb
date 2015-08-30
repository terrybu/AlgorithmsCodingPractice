def mergeSortIterative(array)
	if array.length <= 1
		return array
	end

	midpoint = array.length/2
	leftArray = array[0...midpoint]
	rightArray = array[midpoint...array.length]

	mergeSortIterative(leftArray)
	mergeSortIterative(rightArray)

	mergeIteratively(array, leftArray, rightArray)
end


def mergeIteratively(original, left, right) 
	#iLeft --> left index counter
	#iRight --> right index counter
	#i --> original array index counter

	iLeft = iRight = i = 0 
	#syntax for making multile variables equal to a primitive	

	#one stupid syntax mistake to note, remember that in Ruby, you can't do i++ like Java. 
	#instead, to increment, use i += 1
	#if you make this i++ mistake, console won't show you the real problem, will complain about something else (like an else if syntax error for some reason)

	while iLeft < left.length && iRight < right.length
		if left[iLeft] <= right[iRight]
			original[i] = left[iLeft]
			iLeft += 1
		elsif right[iRight] <= left[iLeft]
			original[i] = right[iRight]
			iRight += 1
		end
		i += 1
	end
	#if you've reached the end of this loop, it means left ran out, or right ran out
	#if left ran out, that means we just gotta put whatever's remaining in right into result

	if iLeft >= left.length
		for j in iRight..right.length-1
			original[i] = right[j]
			i += 1
		end
	elsif iRight >= right.length
		for j in iLeft..left.length-1
			original[i] = left[j]
			i += 1
		end
	end

end



#gets around 0.016 to 0.018 seconds for 5000 elements
