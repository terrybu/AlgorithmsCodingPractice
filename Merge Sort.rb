def merge(array1, array2)
	if array1.empty?
		return array2
	elsif array2.empty?
		return array1
	#these are called the base cases. In our recursion, we are going to keep examining each element of these arrays until we run out of elements in either array. In that case, in these base cases, we just return whatever is left in the other array. If array 1 ran out of elements, that means the only numbers left to put into our result array are the remaining ones in the other array
	elsif array1[0] < array2[0]
		#our left array's first element is less than right array's first element
		#so we return this element, and then recursively call "merge" again with the left array without index 0
		oneElementArray = []
		oneElementArray.push(array1[0])
		return  oneElementArray.concat(merge(array1[1..array1.count-1], array2))
	else
		#our right aray's first element is less. 
		#we do same thing but we reverse to above
		oneElementArray = []
		oneElementArray.push(array2[0])
		return oneElementArray.concat(merge(array1, array2[1..array2.count-1]))
	end
	#at the end of our recursion, we are basically left with something like
	#[1].concat([3].concat([4]......all the way to the largest element))
	#we are merging 1-element-sized arrays into a final array
end

print "Merge Sorting Simply Two Arrays --> " 
p merge([1,4,8,12], [3,6,9])
#cool ruby syntax for merging two different arrays - just plus them!
#p [0,1,2] + [3,4,5]
#but i didn't use it here for clarification purposes

def mergeSort(array)
	if array.count <= 1
		return array
	end
	#base case

	#we are going to utilize the merge function we implemented above in this recursive algorithm.
	#the plan is to chop this big array into very small arrays of element size 1
	#and then run "merge" from above to compare two different arrays and merge into 1 of size 2
	#....on and on until at the very end, we are merging two different already sorted arrays (left and right) into one ... just like we did above 

	#the trick is that we've already solved most of it in the merge function
	#all we do here, is to think about "chopping them up finely"

	middleIndex = (array.count/2).floor #since count is 9, we get 9/2 = 4.5 so we floor it down to 4
	leftArray = mergeSort(array[0...middleIndex]) 
	rightArray = mergeSort(array[middleIndex..array.count-1])
	#what this does is that we will keep recursively running mergeSort on this array until leftArray is just array[0] (1) and rightArray is just array[1] (4) because it hit basecase and returned the array
	#in that case, we start coming back up the function 

	return merge(leftArray, rightArray)
end



print "Merge Sorting Algorithm with Recursion --> "
p mergeSort([1,4,55,3,0,2,442,123,24])

