#Given a string of characters, find the first unique character of the string

def findFirstUniqueCharacter(string)

	#we are going to create a hash map in this first loop over the string.
	#where key is the string and the value is the # of count it occurs in the string
	#we increment the value integer by 1 whenever we see it again

	h = Hash.new()

	for i in 0..string.length-1
		letter = string[i]
		if (h.has_key?(letter))
			h[letter] = h[letter] + 1
		else
			h[letter] = 1
		end
	end

	#in this second loop, we are going to loop over the string one more time, and see if that letter, when compared against the hash, has the value of 1

	for i in 0..string.length-1
		letter = string[i]
		if (h[letter] == 1)
			return letter
		end
	end
	return nil
end


puts findFirstUniqueCharacter("aaaabbbbcaaaabbb")