def returnWays(array)
	result = 0
	k = 0

	while k < array.length-1
		leftArray = array[0...k]
		rightArray = array[k..array.length-1]

		if leftArray.uniq.sort == rightArray.uniq.sort
			result += 1
		end

		k += 1
	end

	return result
end




p returnWays([2,1,1,4,1,1,4,2])
p returnWays([1])
p returnWays([5,1,5,1,5,1])
