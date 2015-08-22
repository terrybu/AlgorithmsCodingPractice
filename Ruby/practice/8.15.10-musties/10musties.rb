#Given an array of numbers, return "fizz" when divisible by 3, buzz when div by 5, fizzbuzz when divisible by both, return number as a string for all oher cases

fizzbuzzInput = [2,5,10,6,16,40,200,100,300] 

#if divisible by 3 and 5, print fb
#if divisible by 3 only, print f
#if divisible by 5 only, print b
#else print number in a string

def fizzbuzz(array)
	for num in array
		if num % 15 == 0
			puts "fizzbuzz"
		elsif num % 3 == 0
			puts "fizz"
		elsif num % 5 == 0
			puts "buzz"
		else 
			puts num.to_s
		end
	end
end

#test your code
fizzbuzz(fizzbuzzInput)


#2 fibonacci iterative
def fib1(n) #return nth term of the fibonacci sequence iteratively
	array = []
	array[0] = 0
	array[1] = 1
	#0 1 1 2 3 5 8 13
	for i in 2..n
		array[i] = array[i-2] + array[i-1]
	end
	
	return array[n]
end

fibInputs = [0,1,2,3,4,5,6,7,8,9,10]
for i in fibInputs
	p fib1(i)
end

#2.1 fibonacci recursive
def fib2(n)
	#base case
	if n == 0
		return 0
	elsif n == 1
		return 1
	end

	return fib2(n-2) + fib2(n-1)
end

for i in fibInputs
	p fib2(i)
end

#2.2 fibonacci recursive with memoization
memo = {}
def fib3(n, memo)
	if n == 0
		return 0
	elsif n == 1
		return 1
	end

	if memo[n]
		return memo[n]
	end

	memo[n] = fib3(n-2, memo) + fib3(n-1, memo)
	return memo[n]
end

for i in fibInputs
	p fib3(i, memo)
end

#3 reverse a string iteratively
def reverse(string)
	fi = 0
	li = string.length-1
	while fi <= li
		temp = string[fi]
		string[fi] = string[li]
		string[li] = temp
		fi += 1
		li -= 1
	end
	return string
end

p reverse("string")

#3.1 reverse a string recursively
def reverseRecurse(string)
	#base case
	if string.length <= 1
		return string
	end

	return string[-1] + reverseRecurse(string[0...-1])
end

p reverseRecurse("string")


#4 find if nested

testInputs = ["((()))", ")))(((", "()", "(())()()(((())"]

def findIfNested(string)
	openCount = 0
	closeCount = 0
	#we find if openCount equals closeCount
	#if we ever find that closeCount becomes greater than openCount, we return false

	for i in 0..string.length-1
		char = string[i]
		if char == "("
			openCount += 1
		elsif char == ")"
			closeCount += 1
		end
		if closeCount > openCount
			return false
		end
	end
	if openCount == closeCount
		return true
	end
	return false
end

for i in testInputs
	p findIfNested(i)
end

#5 insertion Sort

arrayToSort = [0,-1,33,422,3242,131,3234]

def insertionSort(array)
	#nested loop
	#we start from index 1 and compare it to the left elements
	#we call that the key
	for i in 1..array.length-1
		key = array[i]
		j = i - 1
		while j >= 0 && array[j] > key
			array[j+1] = array[j]
			j = j - 1
		end
		array[j+1] = key
	end
	return array
end


# p insertionSort(arrayToSort)

def bubbleSort(array)
  
  #swap boolean logic 
  swapped = true
  
  while swapped 
  #element swap logic 
    swapped = false #change it right away and see if in the iteration, swap occurs then change back
    for i in (0..array.length-2)
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true 
      end
    end 
  end
  return array
end

p bubbleSort(arrayToSort)



def isPalindrome(string)
	if string.length <= 1
	  return true
	end

	if string == reverse(string)
	  return true
	end 
	return false
end

def reverse(string)
	if string.length <= 1
	  return string
	end

	return string[-1] + reverse(string[0..-2])
end

p isPalindrome("racecar")
p isPalindrome("asdf")
p isPalindrome("taco")
p isPalindrome("aaaaabaaaaa")

def anagram(str1, str2) 
  if str1.empty? || str2.empty?
    return false
  end
  
  #we are going to split
  chars1 = str1.split(“”)
  chars2 = str2.split(“”)
  
  #we are going to sort
  chars1 = sort(chars1)
  chars2 = sort(chars2)

  if chars1 == chars2
    return true
  end
  return false
end 