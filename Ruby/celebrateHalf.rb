=begin
You are celebrating whenever a counter reaches a number with even # of digits and the first half equals the second half "1010", "100100" or "1313" or etc. 
Write a function that takes a String as an argument, and finds the next number that satisfies that condition and returns the string. 
N's string length is between 1 to 16 inclusive. 
Care about O(n)
=end

def findNextHalfNumber(string)
	nextintegerValue = string.to_i + 1
	nextString = nextintegerValue.to_s
	len = nextString.length
	firstHalf = nextString[0...len/2]
	secondHalf = nextString[len/2..-1]

	if (firstHalf == secondHalf)
		return string.to_i + 1
	else
		findNextHalfNumber(nextString)
	end

end


puts findNextHalfNumber("9999999")