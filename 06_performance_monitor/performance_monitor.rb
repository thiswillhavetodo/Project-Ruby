def measure(number=1)
	before = Time.now
	number.times do
		yield
	end
	after = Time.now
	(after - before)/number
end
