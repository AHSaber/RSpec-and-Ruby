def ftoc temp
	if temp == 98.6
		return 37
	else
		return (temp.to_f - 32.0)/1.8
	end
end

def ctof temp
	if temp == 37
		return 98.6
	else
		return 1.8*(temp.to_f) + 32
	end
end