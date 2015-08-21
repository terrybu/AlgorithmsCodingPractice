

#given a list of numbers, find a pair of numbers that add up to a target num


#1) clarify and test your assumptions: Find the all pairs of numbers that add up to a target number


#input --> array of integers and target num ... ex) [1,2,3,4,5], 9
#output --> array consisting of two nums ... ex) [4,5]

#2 brainstorm
	#in all cases, edge case is that if the array is less than length 2, it can't return a freaking pair.
		#return nil 

	#nested loop way 
		#we iterate from index 0, then compare 0-1, 0-2, 0-3, 0-4 ... until i + j = 9 and return that first pair
	#two counters way
		#one coming from leftend, another coming from rightend
		#if the array is already sorted from smallest to largest, then we know a lot of things
			#if we add the smallest value with the largest value, and we are less than targetnum,
				#we go to the next smallest and next smallest until we actually hit
			#if we add the smallest + largest and we are large than targetnum,
				#we use to the smallest + 2nd largest ... then 3rd largest ... until we get small enough to hit the targetNum
			#if i + j (1 + 5) is less than targetNum (9), then we have to move the smallest value
		#this solution is O(n log n) because it's only as fast how we sort the array,
		#and the fastest sorting (merge sort) can only be as fast as O(n log n) 
	#hash map way O(n) magic
		#we iterate through the array once and put them into a hashmap, with the num as key, index as value
		#next time you iterate through the array, we are checking if j that will get i to targetNum exists as another key
		#let's say we ran through [1,2,3,4,5] so hashmap looks like
		#{1: 0, 2: 1, 3: 2, 4: 3, 5:4}
		#then as we iterate through the keys which are 1,2,3,4,5, we are checking if 8,7,6,5,4 exists
			#edge cases to watch out for
			#what if target num is 10 and you have [3, 5]?
			#it will return [5,5] because it will find itself as a key and add itself 
			#it's fine if array is [3,5,5] because then you can return [5,5] but not just [3,5]. How to prevent?
			#we check at end if the other "pair key" we found is the same index as the key we are iterating through
			#if not, then we return the num
				#negative nums?
				#works the same way 
			#what if we find duplicates?
				#we can start an array into the value instead of just one value
				#and then return the smaller index in the array

	def returnPairOfNumsThatAddsUpto(targetNum, array)
		if array.length < 2
			return nil
		end

		hash = {}
		for i in 0..array.length-1
			num = array[i] #1 = array[0]
			if !hash.has_key?(num)
				hash[num] = i  #hash[1] = 0
			else
				hash[num] = [hash[num]].push(i)
			end
		end
		#second loop 
		#if (targetNum - keyIteratingThrough) exists as a key in our hash table, we found it
		for i in 0..array.length-1
			num = array[i]
			diffToTarget = targetNum - num
			if hash.has_key?(diffToTarget)
				result = Array.new().push(num)
				if hash[diffToTarget].is_a?(Array)
					result.push(hash[diffToTarget].min)
				else
					result.push(diffToTarget)
				end
				return result
			end
		end
		return nil
	end


	testArray = [1,2,3,4,5]
	testArray2 = [3, 5]

	p returnPairOfNumsThatAddsUpto(9, testArray)
	p returnPairOfNumsThatAddsUpto(5, testArray2)


	def returnAllPairsThatAddsUpto(targetNum, array)
		if array.length < 2
			return nil
		end

		hash = {}
		for i in 0..array.length-1
			num = array[i] #1 = array[0]
			if !hash.has_key?(num)
				hash[num] = i  #hash[1] = 0
			else
				hash[num] = [hash[num]].push(i)
			end
		end
		#second loop 
		#if (targetNum - keyIteratingThrough) exists as a key in our hash table, we found it
		#the result is going to be an array made up of arrays
		result = [] 
		for i in 0..array.length-1
			num = array[i]
			diffToTarget = targetNum - num
			if hash.has_key?(diffToTarget)
				onePair = [num]
				if hash[diffToTarget].is_a?(Array)
					onePair.push(hash[diffToTarget].min)
				else
					onePair.push(diffToTarget)
				end
				if !result.include?(onePair.sort)
					result << onePair.sort
				end
			end
		end
		if result.empty?
			return nil
		end

		return result 
	end


	testArray3 = [4, -3, 10, 3, 8, -1]

	p returnAllPairsThatAddsUpto(7, testArray3)




