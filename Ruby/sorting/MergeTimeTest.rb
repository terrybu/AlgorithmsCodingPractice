require_relative 'Merge Sort Recursive Merge.rb'
require_relative 'Merge_Sort_Iterative_Merge.rb'
require_relative 'testMerge.rb'
require "benchmark"

def makeArrayWithRandomGeneratedIntegers(n)
	array = []
	for i in 0...n
		number = rand(0...100)
		array << number
	end
	return array
end

array = makeArrayWithRandomGeneratedIntegers(6000)
puts(Benchmark.measure { 
	mergeSortIterative(array) }
	) #FAR FASTER than the recursive way I used, making new arrays


array2 = makeArrayWithRandomGeneratedIntegers(6000)
puts(Benchmark.measure { 
	mergeSortRecursive(array2) }
	) 