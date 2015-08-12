#anagram
#when rearranged the letters, it becomes another word
#taco --> coat

#brainstorm
#you have taco and coat. split each character down 
#if both words have the same # of each character, it's an anagram
#1) you split each string to its chars array [t,a,c,o] vs [c,o,a,t]
#2) sort them alphabetically. and see if the two arrays are equal


=begin
	
1. confirm question
2. think of examples
3. think of edge cases
4. write out general flow
5. code it out
6. test it out and address mistakes

=end

def anagramCheck(str1, str2)
	if str1.empty? || str2.empty?
		return false
	end
	str1chars = str1.split("")
	str2chars = str2.split("")
	if str1chars.sort == str2chars.sort
		return true
	end
	return false
end

p anagramCheck("taco", "coat")
p anagramCheck("asdfa", "coat")



def anagramCheckWithCustomBubbleSort(str1,str2)
	str1chars = str1.split("")
	str2chars = str2.split("")
	if bubbleSort(str1chars) == bubbleSort(str2chars)
		return true
	end
	return false
end

def bubbleSort(charsArray)

	#iterate through each character of the array
	#if array[0] call it i > array[1] call it j, we do a SWAP 
	#we keep following i to the end of the array, so we place it 
	#we do this until there's no swap needed anymore for any number in the array
	swapped = true
	while swapped
		swapped = false
		for i in 0...charsArray.length-1
			if charsArray[i] > charsArray[i+1]
				temp = charsArray[i]
				charsArray[i] = charsArray[i+1]
				charsArray[i+1] = temp
				swapped = true
			end
		end
	end
	return charsArray
end

p anagramCheckWithCustomBubbleSort("taco", "coat")
p anagramCheckWithCustomBubbleSort("zzzz", "coat")


p bubbleSort("sjfpwqjfpqjfqpfpq".split(""))

