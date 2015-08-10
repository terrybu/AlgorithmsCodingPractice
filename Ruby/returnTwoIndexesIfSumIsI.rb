def returnIndexesOfTwoIntsWhereSumIs(sum, array)
	resultArrays = [];

	for i in 0...array.count-1
			firstNumber = array[i]
			for j in i+1..array.count-1
					secondNumber = array[j]
					if (firstNumber + secondNumber) == 10
						resultArrays << [firstNumber, secondNumber]
					end
			end
	end
	
	if resultArrays.empty?
		return nil
	end

	return resultArrays

end

t1 = Time.now
p returnIndexesOfTwoIntsWhereSumIs(10, (-100..100).to_a);
t2 = Time.now
p "#{t2 - t1} seconds"
