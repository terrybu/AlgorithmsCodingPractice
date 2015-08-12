array = [1,2,3,4,5]
string = "12345"
number = 12345


#Array
p array

def changeArray(array)
	array << "extra"
	return array
end
changeArray(array)
p array

#you see the an array object IS changed when you pass it into a function, meaning that it's passed by reference


#String --> since strings are objects too, their pointers are passed by value into the function, so they reference the same object
p string
def changeString(string) 
	string << "extra"
	return string
end
p changeString(string)
p string


#number --> numbers are primitive and passed by copy into function
p number
def changeNumber(num)
	num = num + 23456
	return num
end
p changeNumber(number)
p number