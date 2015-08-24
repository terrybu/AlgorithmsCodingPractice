=begin
	
in other languages like Java its

for (int i = array.length-1; i >= 0; i--) {

	object = array[i]
	that's how you decrement
	in ruby there's none of this
}
	
=end

#stick to this

def backwardsIterate(array)
	(array.length-1).step(0, -1) do |i|
		thing = array[i]
		p thing
	end
end

backwardsIterate(["a","b","c"])	

def steps()
	4.step(10, 2) do |i|
		p i
	end
end

steps