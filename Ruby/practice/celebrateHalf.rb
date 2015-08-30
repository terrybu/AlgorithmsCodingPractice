=begin
You are celebrating whenever a counter reaches a number with even # of digits and the first half equals the second half "1010", "100100" or "1313" or etc. 
Write a function that takes a String as an argument, and finds the next number that satisfies that condition and returns the string. 
N's string length is between 1 to 16 inclusive. 
Care about O(n)
=end

#Given string like "5", I must keep incrementing until I get to "11"
#Turn the input into an integer and add 1
#see if that new number satisfies the condition (first half matches second half)
#if not, go to the next number
#keep doing this until the number satisfies it. Then we return that integer in the form of string
#if we don't find, we keep going we hit max of 16 digits, 9,999,999,999,999,999 

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

testInputs = ["232", "2222", "33333", "444444", "9999999", "10001000"]
for i in testInputs
	p celebrateHalf(i)
end

p 2.5.round



