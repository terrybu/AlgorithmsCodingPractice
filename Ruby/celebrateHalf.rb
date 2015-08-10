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
		return nextintegerValue.to_s
	else
		findNextHalfNumber(nextString)
	end

end

testInputs = ["1", "3234", "99999", "231143"]
for i in testInputs
	p findNextHalfNumber(i)
end

#this recursive version complains of stack level too deep when number gets too big
#while an iterative version doesn't do so

def celebrateHalf(string)
	#edge cases. If given input less than 10 or a number with odd # of digits, we can just skip?
	#i.e. 2, 133
	nextNum = string.to_i + 1 #given input "15", next num is 16
	while true
		nextNumString = nextNum.to_s #16 is now a "16" string 
		#Given string "1024", compare "10" to "24" by substringing string[0..stringLength/2-1] + string[stringLength/2...stringLength]
		stringLen = nextNumString.length
		if nextNumString.length % 2 == 0 && nextNumString[0..stringLen/2-1] == nextNumString[stringLen/2...stringLen]
			return nextNumString
		end
		nextNum += 1
	end
end

for i in testInputs
	p celebrateHalf(i)
end