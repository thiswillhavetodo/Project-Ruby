def reverser(input='hello')
	result = yield.split(' ')
	result = result.map do |word|
		word.reverse
	end
	result.join(' ')
end

def adder(input=1)
	yield + input
end

def repeater(number=1)
	number.times do
		yield
	end
end