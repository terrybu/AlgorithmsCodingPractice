def findLargestIncreasingSubsequence(array)

	arrayOfSubarrays = findIncreasingSubsequences(array)
	arrayTotals = []

	for subarray in arrayOfSubarrays
		arrayTotals << determineIncrease(subarray)
	end

	answerIndex = arrayTotals.index(arrayTotals.max)

	return arrayOfSubarrays[answerIndex]
end


def determineIncrease(array)
	increase = 0
	increase = array[-1] - array[0]
	return increase
end


def findIncreasingSubsequences(array)
	result = []
	for i in 0..array.length-2
		if array[i] < array[i+1]
			newSeq = []
			newSeq.push(array[i], array[i+1])
			#we found the smallest possible increasing subseq. 
			#find out how deep the rabbit hole goes
			j = i + 1 #index 1
			while (array[j] < array[j+1])
				newSeq << array[j+1]
				j += 1
			end
			result << newSeq
		end
	end
	return result
end


p findLargestIncreasingSubsequence([1,100,3,500,-1,-100,2,5,1000,-500])