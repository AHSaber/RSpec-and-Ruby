def translate_one_word string
	vowels = ['a', 'e', 'i', 'o']
	length = string.length
	string = string.split('')


	vowels.each do |vowel|
		if string[0] == vowel
			return string.join + 'ay'
		end
	end

	split_index = 0

	i=0
	while i < length
		j=0
		while j < vowels.size
			if (string[i] == vowels[j])
				split_index = i
				i = length
				j = vowels.size
				break
			end
			j+=1
		end
		i+=1
	end

	output = []

	i=split_index
	while i < length
		output.push string[i]
		i+=1
	end

	i=0
	while i < split_index
		output.push string[i]
		i+=1
	end
	output.push 'ay'
	output.join
end

def translate string
	string = string.split(' ')
	output = []
	string.each do |word|
		output.push (translate_one_word word)
	end

	output.join(' ')

end		


