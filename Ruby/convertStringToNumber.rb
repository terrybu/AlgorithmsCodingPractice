#Convert a string to a number without using built-in functions 
#e.g for “3.1415” it should convert it to 3.1415 and for “123” it should convert to 123.

def convertStringToNumber(string)
	#make my hash map
	#key is the string and the value is the actual integer
	h = Hash.new()
	decimalsIntegers = (0..9).to_a
	decimalsStrings = decimalsIntegers.map { |x| x.to_s  }
	for i in 0..9
		h[decimalsStrings[i]] = decimalsIntegers[i]
	end
	h["."] = "."
	h["-"] = "-"

	resultArray = []
	#loop through the string, start converting each letter one by one into integer and push them into an array
	#if it's a dot, then we store the dot. we also store sign if its there
	for i in 0...string.length
		resultArray << h[string[i]]
	end

	#negative number check 
	thisNumberIsNegative = 1
	if resultArray[0] == "-"
		thisNumberIsNegative = -1
		resultArray.delete_at(0)
	end
	
	#the result array now has [1,2,3] for "123" or [3, ., 1, 4, 1, 5] for "3.1415"
	#Now we have to process these numbers so that they go into the right hundredth place, tenth place, etc
	if !resultArray.include?('.')
		#it's a whole number
		#we are going to count how many single-digits are in this number first, in this case, 2 for 24
		#that means 10 ^ 1 * resultArray[0] and 1 * resultArray[1]
		#let's tackle the pattern. for number 3222, there's 4 single digits.
		#that means 10 ^ 3 * resultArray[0] + 10 * 2 * resultArray[1] .... all the way to + resultArray[3]
		return thisNumberIsNegative * convertArrayIntoWholeNumber(resultArray)
	else
		#we found a dot, so it's a float
		return thisNumberIsNegative * convertArrayIntoFloat(resultArray)
	end

end

def convertArrayIntoWholeNumber(arrayOfNumbers)
	result = 0
	count = arrayOfNumbers.count
	while count >= 1
		if count == 1
			placeMultiplier = 1
		else
			placeMultiplier = 10 ** (count - 1)
		end
		result = result + placeMultiplier * arrayOfNumbers[0]
		arrayOfNumbers.delete_at(0)
		count = arrayOfNumbers.count
	end
	return result
end

def convertArrayIntoFloat(arrayOfNumbers)
	indexOfDot = arrayOfNumbers.index(".") #with 3.14, dot index is 1. 
	#And it means that index less than dot index, you are talking about whole numbers
	#index greater than 1, you are talking about decimal part 
	wholeNumber = convertArrayIntoWholeNumber(arrayOfNumbers[0...indexOfDot]) #3
	decimalNumbersArray = arrayOfNumbers[indexOfDot+1..-1] #[1,4]

	decimalNumber = 0
	count = decimalNumbersArray.count
	while count >= 1
		if count == 1
			placeMultiplier = 0.1
		else
			placeMultiplier = 0.1 ** count
		end
		decimalNumber = decimalNumber + placeMultiplier * decimalNumbersArray[-1]
		decimalNumbersArray.delete_at(-1)
		count = decimalNumbersArray.count
	end
	return wholeNumber + decimalNumber
end

p convertStringToNumber("-5")
p convertStringToNumber("123")
p convertStringToNumber("-123456")
p convertStringToNumber("3.18")
p convertStringToNumber("30.014")
p convertStringToNumber("-328.0011")

