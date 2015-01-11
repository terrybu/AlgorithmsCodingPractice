=begin	
Write a program that counts from 1 to 100.For each number, display fizz 
if the number is divisible by 3 and buzz if the number is divisible by 
5, and fizzbuzz if the number is both divisible by 3 and 5
=end

def fizzbuzz()
	for i in 1..100
		if i % 3 == 0 && i % 5 == 0
			puts "#{i} fizzbuzz"
		elsif i % 3 == 0
			puts "#{i} fizz"
		elsif i % 5 == 0
			puts "#{i} buzz"
		end
	end

end

fizzbuzz()