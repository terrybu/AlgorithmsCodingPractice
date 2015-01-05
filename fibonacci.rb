def fibonacci(n)
	if (n == 0)
		return 0
	elsif (n == 1)
		return 1
	else
		return fibonacci(n-2) + fibonacci(n-1)
	end
end

def runFiboWithTimeChecking(n)
	t1 = Time.now.to_f
	fibonacci(n) 
	t2 = Time.now.to_f
	executionTimeFiboWithoutCache = t2 - t1
	puts "executionTimeFiboWithoutCache: #{executionTimeFiboWithoutCache}"
	return executionTimeFiboWithoutCache
end


=begin
The base case, or halting case of a function, is the problem that we know the answer to that can be solved without any more recursive calls. 
The base case is what stops the recursion from continuing on forever. 
Every recursive function must have at least one base case (many functions have more than one).	
=end

def fibonacciWithCaching(n, cacheArray)
	#take care of base cases 
	if (n==0)
		return 0
	elsif (n==1)
		return 1
	end

	#if our cache has the nth term, then we get from the cache O(1) 
	if (cacheArray[n])
		return cacheArray[n]
	end

	#if our cache doesn't have the nth term, we create one and put it inside the cache and return
	cacheArray[n] = fibonacciWithCaching(n-2, cacheArray) + fibonacciWithCaching(n-1, cacheArray)
	return cacheArray[n]
end

def runCacheFiboWithTimeChecking(n)
	cacheArray = []
	t3 = Time.now.to_f
	fibonacciWithCaching(n, cacheArray)
	t4 = Time.now.to_f
	executionTimeFiboWithCache = t4 - t3
	puts "executionTimeFiboWithCache: #{executionTimeFiboWithCache}"
	return executionTimeFiboWithCache
end


if (runFiboWithTimeChecking(30) > runCacheFiboWithTimeChecking(30)) 
	puts "Running Fibonacci without caching is slower than running Fibonacci with caching. So use caching!"
end



def fibonacciCreateArray(n)
	#don't have to do it recursively. Just do it free
	f = []
	f[0] = 0
	f[1] = 1

	for i in 2...n
		f[i] = f[i-2] + f[i-1]
	end

	return f
end

p fibonacciCreateArray(15)