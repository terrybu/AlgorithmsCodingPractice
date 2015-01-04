require 'csv'


def insertionSort(array)
	#outside loop iterates over the array starting from index 1,
	#and the inside loop within that outside loop will check value at index 1 against
	#all the values that come before it and place it in its right position

	#outside loop iterates over array with i 
	#inside loop iterates over every index less than i and compares it with value at i

	for i in 1..array.count-1
		key = array[i]
		j = i - 1
		while j >= 0 && array[j] > key 
			array[j+1] = array[j] 
			j = j -1
		end
		array[j+1] = key 
	end
	return array
end

def makeArrayWithRandomGeneratedIntegers(n, array)
	for i in 0...n
		number = rand(0...10)
		array << number
	end
end

def main(n)
	CSV.open("myInsertionSortExecutionTimeTable.csv", "w") do |csv|
		(0..n).step(1000) do |x|
			array = []
			makeArrayWithRandomGeneratedIntegers(x, array)
			t1 = Time.now.to_f
			insertionSort(array)
			t2 = Time.now.to_f
			executionTime = t2 - t1
	  		csv << [x, executionTime]
	  	end
	end
end

main(20000)