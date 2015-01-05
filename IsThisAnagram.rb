#anagram is a word when rearranged equals another word

def areTheyAnagrams(s1, s2)
	return  sort(s1) == sort(s2) 
end

def sort(string)
	#using bubblesort to sort this character array ("reverse-sort" because I want it alphabetized and "a" < "z")
	charsArray = string.split("")

	swapped = true
	j = 0

	while (swapped) 
		j = j + 1 
		swapped = false 
		for i in 0...charsArray.count-j 
			charCheckingNow = charsArray[i] 
			if charCheckingNow > charsArray[i+1]
				temp = charsArray[i+1]
				charsArray[i+1] = charCheckingNow
				charsArray[i] = temp
				swapped = true
			end
		end
	end
	return charsArray
end

puts areTheyAnagrams("amor", "roma")
puts areTheyAnagrams("banana", "dragon")
puts areTheyAnagrams("elvis", "lives")