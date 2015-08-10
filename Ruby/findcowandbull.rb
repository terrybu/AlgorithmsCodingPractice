=begin
-There are two arrays of integers. Try to find cow and bull. 
Bull here means the same two numbers which are at the same index in those two arrays. 
And cow means the same two numbers which are not at the same index.
For instance,
array1 = [1,4,9]
array2 = [1,9,6]
so the bull is [1]
and the cow is [9]
=end

def findCowBull(array1, array2) 
	bull = []
	cow = []

	for i in 0..array1.length-1
		numInOne = array1[i]

		for j in 0..array2.length-1
			numInTwo = array2[j]

			if (numInOne == numInTwo && i == j)
				bull << numInOne
			elsif (numInOne == numInTwo && i != j)
				cow << numInOne
			end
		end
	end

	p "bull: #{bull}"
	p "cow: #{cow}"
end

array1 = [1,4,9,11,10]
array2 = [1,9,6,4,10]
findCowBull(array1, array2)
