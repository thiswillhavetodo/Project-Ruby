def translate(input)
	array = input.split(' ')
	vowels = ['a', 'e', 'i', 'o', 'u']
	array = array.map do |word| 
		if vowels.include?(word.slice(0))
			word + 'ay'	
		elsif word.slice(0)=='q' && word.slice(1)=='u'
			word.slice(2..word.length) + word.slice(0..1) + 'ay'
		elsif word.slice(1)=='q' && word.slice(2)=='u'
			word.slice(3..word.length) + word.slice(0..2) + 'ay'
		else
			if vowels.include?(word.slice(1))
				word.slice(1..word.length) + word.slice(0) + 'ay'
			else
				if vowels.include?(word.slice(2))
					word.slice(2..word.length) + word.slice(0..1) + 'ay'
				else	
					word.slice(3..word.length) + word.slice(0..2) + 'ay'
				end
			end
		end
	end
	array.join(' ')
end
puts translate('apple')
puts translate('banana')
puts translate('cherry')
puts translate('eat pie')
puts translate('three')
puts translate('school')
puts translate('quiet')
puts translate('square')