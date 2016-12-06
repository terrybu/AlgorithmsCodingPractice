def printAllCombinations(set, currSum, currIndex, array, target, set_size)
	if currSum == target
		if set.length == set_size 
			for i in set
				print "#{i}" + " "
	        end
	        puts
	    end
	    return
	end
    
    if currSum > target || currIndex == array.length || set.length >= set_size
        return
    end
    
    maxEntries = target/array[currIndex]
    for i in 0..maxEntries
        for j in 0...i
            set.push(array[currIndex])
        end
        printAllCombinations(set, currSum + i*array[currIndex], currIndex+1, array, target, set_size)
        for j in 0...i 
            set.pop()
        end
    end
end


def printComb(start, endLimit, target, set_size)
	numsArray = []
	for i in start...endLimit
		numsArray << i 
	end

	set = []
	printAllCombinations(set, 0, 0, numsArray, target, set_size)
end

printComb(1, 50, 70, 3)
printComb(1, 70, 50, 2)