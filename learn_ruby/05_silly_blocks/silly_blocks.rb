def reverse_helper &block
	block.call.reverse
end

def reverser &block
	output = []
	words = block.call.split(' ')
	i = 0
	while i < words.length
		words[i] = reverse_helper {words[i]}
		i+=1
	end
	words.join(' ')
end

def adder amount = 1, &block
	block.call + amount
end

def repeater int = 1
	
	i=0
	while i < int
		yield
		i+=1
	end
end
