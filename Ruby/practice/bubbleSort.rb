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

p bubbleSort(test)



#TIPS IN BUBBLE SORT
#If you understand the general concept, the code becomes easy. You won't have to build all from memory
#Instead break it into different parts
#1) build the for loop that iterates over every single character and swaps it to the one to the right if array[i] is larger
#2) build out the swap logic, knowing that it's a nested loop and a loop that goes on forever until swap is false