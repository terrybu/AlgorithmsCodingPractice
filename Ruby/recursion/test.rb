f = []

f[0] = 0
f[1] = 1
f[5] = 5

p f
#this array comes out [0,1,nil,nil,5]
#means that in Ruby, you can make an array, and then just insert elements at random indexes
#although this seems stupid because it's O(n) for arrays in insertion, deletion due to indexes getting reorganized

