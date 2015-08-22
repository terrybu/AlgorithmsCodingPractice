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


def fibOtherWay(n)
	#0, 1, 1, 2, 3, 5, 8
	#a  b 
	   #a  b  
	a = 0
	b = 1

	while (n > 0)
		oldB = b #old a = 0
		b = a + b #new b = 0 + 1 
		a = oldB
		n = n - 1 
	end

	return a
	#only caveat, you calculate an extra b you don't need from this function
end