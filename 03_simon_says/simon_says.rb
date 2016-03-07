def echo(input)
	input
end

def shout(input)
	input.upcase
end

def repeat(input, number=2)
	result = input
	(number-1).times do 
		result = result + ' ' + input	
	end
	return result	
end

def start_of_word(input, number)
	input.slice(0..(number-1))
end

def first_word(input)
	array = input.split
	array[0]
end

def titleize(input)
	array = input.split(' ')
	n = 1
	result = [array[0].to_s.capitalize]
	while n<array.length	
			if array[n]==('over')||array[n]==('and')||array[n]==('the')
				result << (' ' + array[n].to_s)
				n = n+1
			else
				result << (' ' + array[n].to_s.capitalize)
				n = n+1
			end
	end
	return result.join
end
