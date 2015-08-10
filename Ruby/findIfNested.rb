# Given a string S consisting of N characters. All characters are either open or close parentheses. Check if the string is properly nested: 
# (For example, string "(()(())())" is properly nested but string "())" isn't) 


")("

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
