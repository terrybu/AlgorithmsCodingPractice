
def pushZeroAndReturnCountNonZeroes(arr)
	nonZero = 0

	for index in 0..arr.length-1
		if arr[index] != 0 
			arr[nonZero] = arr[index]
			nonZero += 1
		end
	end

	for i in nonZero..arr.length-1
		arr[i] = 0
	end	

	return nonZero
end

array = [1,2,3,0,42,20,0]
p pushZeroAndReturnCountNonZeroes(array)
p array

array2 = [1,4,5342,0,0,0,54235,423,4214,1,1,0,54,35,2,32,0,0,878,65]
p pushZeroAndReturnCountNonZeroes(array2)
p array2

### [1,2,3,0,42,20,0] → [1,2,3,42,20,0,0]
### return 5