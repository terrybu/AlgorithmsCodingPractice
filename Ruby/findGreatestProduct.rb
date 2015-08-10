array = [-5, 1, 7, -3, 4]

def findGreatestProduct(array)
	#what are the edge cases?
	if (array.length == 0)
		return nil
	elsif (array.length == 1)
		return nil
	else 
		h = Hash.new()
		max = 0;
		for i in 0..array.length-1
			firstNum = array[i]
			j = i + 1
			while (j <= array.length - 1)
				secondNum = array[j]
				product = firstNum * secondNum
				if product > max
					max = product
				end
				h[product] = [firstNum, secondNum]
				j = j + 1
			end
		end
	end
	p h[max]
	return max
end


p findGreatestProduct(array);