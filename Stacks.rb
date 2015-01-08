class Stack
#LIFO 
	def initialize()
		@store = Array.new
	end

	def push(element)
		@store.push(element)
	end

	def pop
		@store.pop
	end

	def size
		@store.length
	end

	def show
		p @store
	end
end

terryStack = Stack.new
terryStack.push("root")
terryStack.push("popthis")
terryStack.push("popthistwo")
terryStack.pop
terryStack.pop
terryStack.show
