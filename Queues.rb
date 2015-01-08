class Queue
#FIFO 

	def initialize()
		@store = Array.new
	end

	def enqueue(element)
		@store.push(element)
	end

	def dequeue
		#get the first guy and dequeue him off the front of the line
		firstGuy = @store[0];
		@store.delete_at(0);
		return firstGuy;
	end

	def size
		@store.length
	end

	def showQueue
		p @store
	end
end

terryQueue = Queue.new
terryQueue.enqueue("baby")
terryQueue.enqueue("baby2")
terryQueue.enqueue("baby3")
terryQueue.enqueue("baby4")
terryQueue.showQueue

p terryQueue.dequeue
terryQueue.showQueue