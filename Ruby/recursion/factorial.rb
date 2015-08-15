def factorial(int)
	#for some reason, 0! is 1
	if int == 0
		return 1
	end

	return int * factorial(int-1)
end

p factorial(0)
p factorial(1)
p factorial(3)
p factorial(4)
p factorial(5)