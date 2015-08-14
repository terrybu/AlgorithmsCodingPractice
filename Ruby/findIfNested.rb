# Given a string S consisting of N characters. All characters are either open or close parentheses. Check if the string is properly nested: 
# (For example, string "(()(())())" is properly nested but string "())" isn't) 


#how do you address edge case ")("???
#YOU MUST address edge case early on so you can build them in 
#1) confirm
#2) test assumptions by asking questions
#3) think of example inputs
#4) think of edge cases
#5) visualize and talk through general approach
#6) code it out
#7) test it out


=begin
right from amazon interview
***impressions
- first i suggested that i keep a hash map and see if the counts will equal each other
- but then he suggested that we can just use two variables, why hash map?
- i agreed
- then he said how about edge cases where we have ")("
- i got stumped
- he said that using one counter will be easy if we do this
- if we ever cross closing before we have a open, we will get a -1. then we return false right away (i didn't get this part right away)
=end

def properlyNested(string)

    #nested if "(" is matched with a corresponding ")"
    #but if number of "(" doesn't match with # of ")", then we return false
    
    counter = 0;
    
    for i in 0..string.length-1
        letter = string[i]
        
        #we increment counter when we find open
        if (letter == "(")
            counter += 1
        elsif (letter == ")")
            counter -= 1
        end
        
        #we decrement counter when we find close
        if (counter < 0)
           return false    
        end
        
    end
    
    if (counter == 0)
        return true
    else
        return false
    end
    
end
