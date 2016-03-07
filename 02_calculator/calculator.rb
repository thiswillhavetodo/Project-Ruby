def add(a, b)
	a + b
end

def subtract(a, b)
	a - b
end

def sum(array)
	num = 0
	sum = 0
	while(num <= array.size)
		sum = sum + array[num].to_i
		num = num + 1
	end
	return sum
end

def multiply(a, b, c=1, d=1)
	a * b * c * d
end

def power(a, b)
	a**b
end

def factorial(a)
	if a==0 || a==1
		sum = 1
	else
		sum = 1
		num = a
		while num>1
		sum = sum * num
		num = num-1
		end
	end
	return sum
end
