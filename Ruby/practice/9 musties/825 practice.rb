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




def fib(n) #find nth term
	if n == 0
		return 0
	elsif n == 1
		return 1
	end

	return fib(n-2) + fib(n-1)
end

p fib(10)


def insertionSort(array)
	#[3,5,0,1,2,6]

	#we are going to start from index 1, the key is that one at i
	#we are going to go one space to the left at index j
	#keep sorting the key to its right place, and then move i one to the right
	#nested loop
	for i in 1..array.length-1
		key = array[i]
		j = i - 1
		while j >= 0 && array[j] > key
			array[j+1] = array[j]
			j = j -1
		end
		array[j+1] = key
	end
	return array
end

p insertionSort([3,5,0,1,2,6])


def findIfAnagram(str1, str2)
	#1 definition of an anagram is when rearranged, they equal each other
	#2 edge cases ... either one of them is empty or null
	#3 test inputs 
		# "word" "jaws" --> false
		# "coat" "taco" --> true
		# "" "asdf" --> false
	#4 brainstorm
		#a) sort both of them, see if they equal to each other
	
	#empty or null check, return false
		#blah

	if str1 == nil || str2 == nil
		return false
	end
	if str1.empty? || str2.empty?
		return false
	end

	if insertionSort(str1) == insertionSort(str2)
		return true
	end
	return false
end

p findIfAnagram("taco", "coat")
p findIfAnagram("", "asdf")
p findIfAnagram("dafjpas", "fad")











