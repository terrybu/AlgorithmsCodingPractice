#concept
#General concept is that we iterate over the array as many times as possible from left to right until no swap ever occurs

#you iterate through the array
#[7, 5, 3, 9]
#first time you run through, you compare it to the next one
#if i > j, you swap i with j
#you keep pointing to the swapped i
#you compare i with the one to the right of it again, if it's greater, you keep pushing it to the right
#you basically keep pushing i to the right until it finds its place, let's say i < j like 7 < 9
#now array looks like [5, 3, 7, 9]
#we are still not done, we go all the way from index 0 again do this process again


test = [2,5,10,2,100,4,500,0,-5]

def bubbleSort(array)
	swapped = true
	while swapped
		swapped = false
		for i in 0..array.length-1
			for j in i+1..array.length-1
				if array[i] > array[j]
					array[i], array[j] = array[j], array[i]
					swapped = true
				end
			end
		end
	end
	return array
end

p bubbleSort(test)
