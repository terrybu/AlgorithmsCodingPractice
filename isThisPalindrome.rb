#palindrome is a word, phrase that reads the same backwards and forwards 

def isThisPalindrome(string)
	return string == reverseString(string)	
end

def reverseString(string)
	resultString = ""
	(string.length-1).step(0, -1) do |i|
		letter = string[i]
		resultString << letter
	end
	return resultString
end

puts isThisPalindrome("racecar")
puts isThisPalindrome("banana")
puts isThisPalindrome("amor roma")