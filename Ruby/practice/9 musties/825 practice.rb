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

#1 clarify the question
#2 edge case
	#yes array can be null
#3 example inputs
	#array1 = [1,2,3,4]
	#array2 = [2,3,4,5]

	#array1 = nil
	#array2 = [2,3,4]

	#array1 = [1, 0, 5]
	#array2 = [3, 0, 2]


#4 function signature
	#input --> two arays of integers
	#output --> void but print out bulls array and cows array

#5 general brainstorming
	#hash map way
	#what do you do when there's a duplicate like [2,2,2,4,5,5] and comparing it to [2,4,5]?
	#hash map way will overwrite things so hash map will have hash[2] = 2 instead of hash[0] = 2
	#better to have an array in that value slot?

def findBullsAndCows(array1, array2)
	#edge case: array1 || array2 is nil, then print empty for both 
	bullsArray = []
	cowsArray = []
	if (array1 == nil || array2 == nil)
		return nil
	else
		if array1.empty? || array2.empty?
			return nil
		end
	end
	hash = {}
	for i in 0..array1.length-1
		num = array1[i]
		if !hash[num]
			hash[num] = i
		elsif hash[num].is_i?
			hash[num] = [hash[num]].push(i)
		else
			hash[num].push(i)
		end
	end
	for j in 0..array2.length-1
		num = array2[j]
		if hash[num]
			if hash[num].is_a? Integer
				if hash[num] == j
					bullsArray << num
				else 
					cowsArray << num
				end
			else
				if hash[num].includes?(j)
					bullsArray << num
				else
					cowsArray << num
				end
			end
		end
	end
			
	#iterate through array1 put everything into hashmap. Key is the num. Value is the index

	#iterate throuhg array2. Check if hash has key of array2[i]. If it does, check index.
	#push into bull if index is ==. if not, push in cows array
	

	#done, print out bulls array ad cows array
	p bullsArray
	p cowsArray
end


findBullsAndCows(nil, [2])
findBullsAndCows([2,3,4], [2,0,3])