=begin
	
Convert a "decimal" (base 10 numeral system, normal numbers we are used to) input to binary (base two). 
e.g. for 224, it should print 11100000 - without using any built in functions

=end


def convertToBinary(number)
	binaryArray = []
	while number > 1
		if number % 2 == 0
			binaryArray << 0
		else
			binaryArray << 1
		end
		number = number / 2
	end
	if number == 1
		binaryArray << 1
	end
	p binaryArray.reverse.join.to_i
	return binaryArray.reverse.join.to_i
end

convertToBinary(12)  #1100 = 2 ^ 2 (4) +  2 ^ 3 (8)
convertToBinary(224) #11100000
convertToBinary(34)
convertToBinary(128)
convertToBinary(256)
convertToBinary(257)
convertToBinary(1024)
