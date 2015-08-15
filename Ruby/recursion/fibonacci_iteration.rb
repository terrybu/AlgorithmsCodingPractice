def fib(n)
	f = {}
	f[0] = 0
	f[1] = 1

	for i in 2..n
		f[i] = f[i-2] + f[i-1]
	end
	p f
	return f[n]
end


p fib(20)