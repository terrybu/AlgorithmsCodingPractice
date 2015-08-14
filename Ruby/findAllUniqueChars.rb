=begin
	
2 approaches
1) brute force loop within a loop On2
2) hash map --> O(n)

=end

def bruteForce(string)
	result = []
	array = string.split("")
	for i in 0..array.length-1
		char1 = array[i]
		p "char1 is #{char1}"
		unique = true
		for j in i+1..array.length-1
			char2 = array[j]
			p "char2 is #{char2}"
			if char1 == char2
				p "since #{char1} = #{char2}, this is not unique"
				unique = false
				break
			end
		end
		if unique
			p "#{char1} is unique"
			result << char1
		end
	end
	return result
end

testString = "cookie"
p bruteForce(testString)