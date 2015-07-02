def echo output
	output.to_s
end

def shout output
	output.to_s.upcase
end

def repeat sentence, times = 2
	i=0
	output = sentence
	while i < times - 1
		output += ' ' + sentence
		i+=1
	end
	output
end


def start_of_word word, length
	word = word.split('')
	i = 0
	output = ''
	while i < length.to_i
		output += word[i]
		i +=1
	end
	output
end

def first_word string
	string = string.split(' ')
	string[0]
end

def titleize string
	string = string.split(' ')
	i = 0
	while i < string.size
		if string[i] != 'the' && string[i] != 'and' && string[i] != 'over'
			string[i] = string[i].capitalize
		end
		i+=1
	end

	string[0] = string[0].capitalize
	string.join ' '
end


