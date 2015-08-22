#tip to insertion sort
#we start from index 1 and go to the left
#don't use i for anything after you find the key and the j
#j drives everything else


def insertionSort(array)

	#edge case
	if array.length <= 1
		return array
	end

	for i in 1..array.length-1

		key = array[i]
		j = i -1

		while j >= 0 && array[j] > key
			array[j+1] = array[j]
			j = j -1
			
		end
		array[j+1] = key
		p array
	end

end

array = [2,0,100,50,30,20,300,200,3]
insertionSort(array)
p array



=begin
insertion sort is another nested loop.
we iterate over every number but starting from every number called key, we go right to left, checking to see where its right place is in the "left subarray" and putting it in the right place before moving on

simple drawing 
[5,0,50,100,20]

key is 0. check 0 with 5
j+1 becomes 5 so 0 becomes 5 //5, 5, 50, 100, 20
key is still 0 and since j hits -1 in the next loop, we exit loop and array[j+1] becomes 0 //0, 5, 50, 100, 20
50 goes through fine
100 goes through fine
20 is key and finds itself less than 100 
0 5 50 100 100 ... move over j - 1, 50 > 20 so 
0 5 50 50 100 ... key now finds itself > 5 so it moves over j + 1 and places itself down there
0 5 20 50 100

=end