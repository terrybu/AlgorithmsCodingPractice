#palindrome is a "racecar"
#reversed string is same as original string

#confirm question
#ask questions
#do i get bonus points for doing it recursively or iteratively?
#brainstorm

#1) string == string.reverse
#2) recursive --> one character is a palindrome. we keep taking off first index and last index

def palindromeIterative(string)
	if string == reverse(string)
		return true
	end
	return false
end

def reverse(string)
	#recursively
	if (string.length <= 1)
		return string
	end

	return string[-1] + reverse(string[0..-2])
end

p palindromeIterative("racecar")
p palindromeIterative("asdfadsfa")

def palindromeRecursive(string)
	p "string is #{string}"

	if string.length <= 1
		return true
	end

	if string[0] == string[-1]
		return palindromeRecursive(string[1..-2])
	end
	#don't forget to have the RETURN statement above, otherwise, it skips right over, and just goes straight to the false below

	return false
	
end

p palindromeRecursive("racecar")