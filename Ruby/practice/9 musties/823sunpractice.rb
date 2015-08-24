def fib(n)
	if n == 0
		return 0
	elsif n == 1
		return 1
	end
	#0,1,1,2,3,5,8,13,21

	return fib(n-2) + fib(n-1)
end

p fib(7)
p fib(8)

def fibMemo(n)
	hashMap = {}
	fibWithmemo(n, hashMap)
end


def fibWithmemo(n, hash)
	if n == 0 
		return 0
	elsif n == 1
		return 1
	end

	#we check hash if it's there
	if hash[n]
		return hash[n]
	end
	
	hash[n] = fibWithmemo(n-2, hash) + fibWithmemo(n-1, hash)
	return hash[n]
end

p fibMemo(8)
p fibMemo(9)

def fibIterative(n)
	f = [0,1]
	i = 2

	while (i <= n)
		f[i] = f[i-2] + f[i-1]
		i = i + 1
	end

	return f[n]
end


p fibIterative(8)
p fibIterative(10)



def isItNested(string)
	open = 0
	closed = 0
	for i in 0..string.length-1
		char = string[i]
		if char == '('
			open += 1
		elsif char == ')'
			closed += 1
		end
		if closed > open
			return false
		end
	end
	if open == closed and open > 0 and closed > 0
		return true
	end
	return false 
end

p isItNested("((()))")
p isItNested(")))(((")
p isItNested("fdsajf")

