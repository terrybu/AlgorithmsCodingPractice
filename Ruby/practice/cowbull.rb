=begin
-There are two arrays of integers. Try to find cow and bull. 
Bull here means the same two numbers which are at the same index in those two arrays. 
And cow means the same two numbers which are not at the same index.
For instance,
array1 = [1,4,9]
array2 = [1,9,6]
so the bull is [1]
and the cow is [9]

Notes
1) Confirm the question --> two arrays, when a number is at same index, it's a bull. When a same number exists but at different indexes, its a cow. Do we print out cow and bull seperately just in the console?
--> print out a bulls array and a cows array 

2) Ask questions and test assumptions
are both arrays same length? 
--> no, they don't have to be

3) edge cases --> should we worry if either array is nil?
--> if either array is nil, just return nil 

4) think of some example test inputs
[1,2,3,4,5]
[71, 2,3, 5, 10, 5]
- what if you have a cow and a bull? let's say you have a 5 at the same index at both arrays, but another 5 exists in the second array
--> 5 will exist in both cows and bulls array

5) Brainstorm
- bruteforce approach might be a O(n^2) solution
    we do a loop within a loop
	for every int in array1, we loop over every int in array2
		if it's at the same index, add it to bull array, if the same number exists in another index, add it to cows array
- we could loop through one array separately and then make a hash map where key is index number and value is array value
	{
	0: 71,
	1: 2,
	2: 3,
	3: 5,
	4: 10,
	5: 5
	}
	- and then while iterating over the second array, we see if the value exists in this dictionary's keys
	- if it does, check the value. if it's the same as the number, you have a bull. if it's not same index, push it to cow
=end


def findCowBullBruteForce(array1, array2)
	bulls = []
	cows = []
	for i in 0..array1.length-1
		num1 = array1[i]
		for j in 0..array2.length-1
			num2 = array2[j]
			if num1 == num2
				if i == j
					bulls << num1
				else
					cows << num1
				end
			end
		end
	end
	if bulls.empty? || cows.empty?
		return nil
	end
	print "bulls:"
	p bulls
	print "cows:"
	p cows
end

def findCowBull(array1, array2)
	bulls = []
	cows = []
	hash = Hash.new
	for index in 0..array1.length-1
		value = array1[index]
		hash[value] = index
	end
	for index2 in 0..array2.length-2
		value = array2[index2]
		if hash[value]
			index1 = hash[value]
			if index1 == index2
				bulls << value
			else
				cows << value
			end
		end
	end
	p hash
	if bulls.empty? || cows.empty?
		return nil
	end
	print "bulls:"
	p bulls
	print "cows:"
	p cows
end


array1 = [2,5,1,7,12]
array2 = [12, 5, 3, 1, 12, 12, 12]

findCowBullBruteForce(array1, array2)
findCowBull(array1, array2)