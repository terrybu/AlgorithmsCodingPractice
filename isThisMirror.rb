#12021 is a mirror #

def isMirror(num)
	if (num == nil)
		return false
	end
	numString = num.to_s
	#edge cases
	if (numString.length == 1)
		return false
	end

	if (numString.length % 2 == 0)
		leftHalf = numString[0..numString.length/2-1]
		rightHalf = numString[(numString.length/2..-1)]
	else
		#on odd # of charcters in the string, the rightHalf gets a little screwy - needs to adjust
		leftHalf = numString[0..numString.length/2-1]
		rightHalf = numString[numString.length/2+1..-1]
	end

	if leftHalf.reverse == rightHalf
		return true
	end

	return false
end

puts isMirror(1221)
puts isMirror(12021)
puts isMirror("abbba")
puts isMirror("abba")
puts isMirror("cfdsaf")
puts isMirror(1921)