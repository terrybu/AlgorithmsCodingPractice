
def increment(string)
	#the idea is to have a "carry" from the beginning
	#we have a boolean that says whether we should carry or not carry
	charArray = string.split("")
	charArray.map! { |i| i.to_i }
	carry = 1
	result = "" 
	(charArray.length-1).step(0,-1) do |i|
		int = charArray[i]
		int = int + carry
		if int == 10
			int = 0
		else
			carry = 0
			convertedChar = int.to_s
			if i != 0 
				unchanged = string[0..i-1]
				return unchanged + convertedChar + result
			else
				return convertedChar + result
			end
		end
		convertedChar = int.to_s
		result = convertedChar + result
	end
	if carry == 1
		result = carry.to_s + result
	end
	return result 
end

#no limit to length of string
#489 should increment to 490 and return the string
#no "convert to integer" can be used

p increment("489")
p increment("999")
p increment("1000")
p increment("23423")
p increment("499")
p increment("1199")
p increment("19999")