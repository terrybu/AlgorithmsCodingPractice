=begin
1 clarify the question
	given array of integers, print fizz divisible by 3, buzz when by 5, fizzbuzz when divisible by both
	all other cases, just print the num
2 edge cases
	when integer is 0? 
3 example input 
4 brainstorm and pseucode in comments
5 code
6 test
=end

exampleInput = [2, 5, 10, 6, 0, 100, 20, 15, -5]

def fizzbuzz(array)
	for num in array
		if num == 0
			puts "0" #edge case. without it, 0 will print "fizzbuzz"
		elsif num % 3 == 0 and num % 5 == 0
			puts "fizzbuzz"
		elsif num % 3 == 0
			puts "Fizz"
		elsif num % 5 == 0
			puts "Buzz"
		else
			puts num.to_s
		end
	end
end

fizzbuzz(exampleInput)

def fizzbuzzStringConcat(array)
	for num in array
		result = ""
		if num % 3 == 0
			result << "fizz"
		end
		if num % 5 == 0
			result << "buzz"
		end
		if result == ""
			result = num.to_s
		elsif num == 0
			result = "0"
		end
		puts result
	end
end

fizzbuzzStringConcat(exampleInput)



def reverseString(str)
	result = ""
	(str.length-1).step(0, -1) do |i|
		char = str[i]
		result = result + char
	end
	return result
end

p reverseString("string")