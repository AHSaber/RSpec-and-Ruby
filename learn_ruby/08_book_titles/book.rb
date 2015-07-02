class Book
	
	attr_accessor :title
	def title= newTitle
		@title = titleize newTitle
	end

	def initialize
		@title
	end
end

def titleize string
	string = string.split(' ')
	i = 0
	while i < string.size
		if string[i] != 'the' && string[i] != 'and' && string[i] != 'over' && string[i] != 'a' && string[i] != 'of' && string[i] != 'in' && string[i] != 'an'
			string[i] = string[i].capitalize
		end
		i+=1
	end

	string[0] = string[0].capitalize
	string.join ' '
end
