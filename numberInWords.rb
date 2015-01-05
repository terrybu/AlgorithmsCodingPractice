=begin
Write a program that takes in a number and prints it in words. 
e.g. for 201, it should print “two hundred and one”. Support up to billions.
=end

#12 twelve
#21 twenty one
#45 fourty five
#101 one hundred and one
#5020 five thousand twenty
#100,001 one hundred thousand and one

h = Hash.new()
	h[1] = "one"
	h[2] = "two"
	h[3] = "three"
	h[4] = "four"
	h[5] = "five"
	h[6] = "six"
	h[7] = "seven"
	h[8] = "eight"
	h[9] = "nine"
	h[10] = "ten"
	h[11] = "eleven"
	h[12] = "twelve"
	h[13] = "thirteen"
	h[14] = "fourteen"
	h[15] = "fifteen"
	h[16] = "sixteen"
	h[17] = "seventeen"
	h[18] = "eighteen"
	h[19] = "nineteen"
	h[20] = "twenty"
	h[30] = "thirty"
	h[40] = "fourty"
	h[50] = "fifty"
	h[60] = "sixty"
	h[70] = "seventy"
	h[80] = "eighty"
	h[90] = "ninety"
	h[100] = "hundred"
	h[1000] = "thousand"
	h[1000000] = "million"
	h[1000000000] = "billion"

def printInWords(number, h)
	stringsArray = []
	if (h[number])
		stringsArray << h[number]
	else
		runTranslatingAlgorithm(h, number, stringsArray)
	end
	puts stringsArray.join(" ")
	return stringsArray.join(" ")
end



def turnTenth(number, h)
	if h[number]
		return h[number]
	else
		tenth = number / 10
		leftBase = number % 10
		return h[tenth * 10] + " " + h[leftBase]
	end
end

def turnHundredth(number, h)
	hundredth = number / 100 #with 124, hundredth is 1. 200 -> 2
	leftOver = number % 100 #with 124, leftOver is 24. 200 --> 0
	if (leftOver != 0)
		return [h[hundredth], h[100], turnTenth(leftOver, h)].join(" ")
	else
		return [h[hundredth], h[100]].join(" ")
	end
end



def runTranslatingAlgorithm(h, number, stringsArray)
	billion = 1000000000
	million = 1000000
	thousand = 1000
	while number > 0
		if number > billion #> 1 billion
			billionth = number / billion
			stringsArray << h[billionth] << h[billion]
			number = number - billionth * billion
		elsif number > 100 * million #> 100 Million
			hundredMillion = number/million
			hunMilString = turnHundredth(hundredMillion, h)
			stringsArray << hunMilString << h[million]
			number = number - hundredMillion * million
		elsif number > 10 * million #> 10 Million
			tenMillionth = number/million
			tenMillionthString = turnTenth(tenMillionth, h)
			stringsArray << tenMillionthString << h[million]
			number = number - tenMillionth * million
		elsif number > million #number greater than 1 Million
			millionth = number/million
			stringsArray << h[millionth] << h[million]
			number = number - millionth * million
		elsif number > 100 * thousand
			#6 digits 124524 one hundred twenty four thousand five hundred twenty four
			hundredThousandth = number/thousand
			hundredThouString = turnHundredth(hundredThousandth, h)
			stringsArray << hundredThouString << h[thousand]
			number = number - hundredThousandth * thousand
		elsif number > 10 * thousand
			#5 digits 49111 fourty nine thousand one hundred eleven
			tenThousandth = number / thousand
			tenThousandthString = turnTenth(tenThousandth, h) #will return "forty nine"
			stringsArray << tenThousandthString << h[thousand]
			number = number - tenThousandth * thousand
		elsif number > thousand
		#4 digit number 5011
			thousandth = number / thousand
			stringsArray << h[thousandth] << h[thousand]
			number = number - thousandth * thousand
		elsif number > 100
		#3 digit number 311
			hundredth = number / 100 
			stringsArray << h[hundredth] << h[100]
			number = number - hundredth * 100
		elsif number > 10
			stringsArray << turnTenth(number, h)
			number = 0
		elsif number >= 1
			stringsArray << "and" << h[number]
			number = 0
		end
	end
end

printInWords(5100400301, h)