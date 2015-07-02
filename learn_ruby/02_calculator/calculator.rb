def add a, b 
	a + b
end

def subtract a, b 
	a-b
end

def sum ints
	sum = 0
	ints.each do |nums|
		sum += nums
	end
	sum
end


def multiply ints
	if ints.size == 0
		return 0
	end
	sum = 1
	ints.each do |i|
		sum *= i
	end
	sum
end

def power a, b
	if b == 0
		return 1
	end
	i = 0
	original = a
	while i < b-1
		a *= original
		i+=1
	end
	a
end

def factorial n
	if n == 0 || n == 1
		return 1
	else
		return n * factorial(subtract(n, 1))
	end
end