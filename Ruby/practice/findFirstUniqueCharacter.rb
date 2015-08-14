#find the first non-repeating character in a string
#let's say aaaaaaabcdeeeeeeee, return "b"

#1) clarify question
#2) should I care about time complexity?

# "asdf" --> return "a"
# "bananas --> return "b"
# "aaaaaaaaceeeeee" return "c"

#brainstorm --> 
#1) brute force way approach is "nested loop" ... which is O(n^2)
	#we loop from left to right
	#once we find char is not unique, we throw that char into a "not unique array" and then break out of that inner loop
	#i.e. we are looping with "a" as key ... if j is "a" as well, we jump the key to "b"
	#the next iteration starts by checking if its not in the notUnique array, if it is, just go to next one
	#if it isn't loop towards the right again to make sure

def nestedLoopApproach(string)
	chars = string.split("") #objc-alternative is [myString componentsSeparatedByString:@" "];
	notUniqueArray = []
	for i in (0..chars.length-1)
		# p "i is #{i}"
		# p "chars[i]: " + "#{chars[i]}"
		key = chars[i]
		if !notUniqueArray.include?(key)
			isUnique = true #this Boolean was the hard part. 
			for j in (i+1..chars.length-1)
				# p "j is #{j}"
				# p "chars[j]: " + "#{chars[j]}"
				if key == chars[j]
					notUniqueArray << key
					isUnique = false
					break #what break is, BREAK OUT OF the current FOR-LOOP completely
				end
			end
			if isUnique
				return key
			end
		end
	end
	return nil
end
#lessons: manually go over the code line by line if you get stuck
#inject real numbers, and see where the logic is going wrong

testArray = ["aaaaabccccc", "asdfasdf", "tacospices", "iwjfqijfp"]

for string in testArray
	p nestedLoopApproach(string)
end

def hashMapVersion(string)
	chars = string.split("")
	hash = {}
	for i in (0..chars.length-1)
		char = chars[i]
		#hashmap is char: counter, ex) "b" : 3
		if hash.has_key?(char)
			hash[char] += 1 
		else 
			hash[char] = 1
		end
	end
	#at end of this loop, we have a hash of all the characters with each count as value
	#"a" : 1, "b": 2 ...
	#unique is where count is 1
	#but since Hash maps and dictionaries are usually UNORDERED (except for special data structs with ordered keys)
	#we will need to go over the original string to find that order
	for char in chars
		if hash[char] == 1
			return char
		end
	end
	return nil
end

for string in testArray
	p hashMapVersion(string)
end







