


def recursion(i)
	if i > 0
		puts "before recursion statement at #{i}"
		recursion(i - 1)
		puts i
		puts "after recursion statement at #{i}"
	end
end

recursion(5)
