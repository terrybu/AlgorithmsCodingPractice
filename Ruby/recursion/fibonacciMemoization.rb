def fibonacci(n, memo)
	if n == 0
		return 0
	elsif n == 1
		return 1
	end

	if !memo.has_key?(n)
		memo[n] = fibonacci(n-2, memo) + fibonacci(n-1, memo)
	end

	return memo[n]
end


testInputs = []
for i in 0..50
	testInputs << i
end

memoDictionary = {}

for i in testInputs
	p fibonacci(i, memoDictionary)
end



