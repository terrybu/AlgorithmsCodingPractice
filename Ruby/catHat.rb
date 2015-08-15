=begin
You have 100 cats. You have arranged all your cats in a line. Initially, none of your cats have any hats. You take 100 rounds walking around the cats, always starting with the first cat. Every time you stop at a cat, you put a hat on it if it doesn't have one, and you take its hat off if it has one on.
The first round, you stop at every cat. The second round, you only stop at every 2nd cat (#2, #4, #6, #8, etc.). The third round, you only stop at every 3rd cat (#3, #6, #9, #12, etc.). You continue this process until the 100th round (i.e. you only visit the 100th cat).
Write a program that prints which cats have hats at the end.
=end

cats = [false] * 100

round = 1
while round <= 100
	catIndex = 1
	while catIndex < 100
		if catIndex % round == 0
			if cats[catIndex] == true
				cats[catIndex] = false
			else
				cats[catIndex] = true
			end
		end	
		catIndex += 1
	end
	round += 1
end

p cats

results = []
for i in 0..99 do
	if cats[i] == true 
		results << i 
	end
end
puts results

tr = true
p !tr
fa = false
p !fa